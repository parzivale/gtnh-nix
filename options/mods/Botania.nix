{lib, ...}: {
  Botania = lib.mkOption {
    description = "Botania configuration (./config/Botania.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
          type = lib.types.str;
          default = "./config/Botania.cfg";
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
              "18stones.enabled" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set this to false to disable the 1.8 Stones available as mana alchemy recipes. This only disables the recipes and entries. Old ones that are already in the world will stay.";
              };
              "19enderStuff.enabled" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set this to false to disable the 1.9 Ender features available as recipes. This only disables the recipes and entries. Old ones that are already in the world will stay.";
              };
              "adaptativeConfig.enabled" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set this to false to disable the Adaptative Config. Adaptative Config changes any default config values from old versions to the new defaults to make sure you aren't missing out on changes because of old configs. It will not touch any values that were changed manually.";
              };
              "armorModels.enable" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set this to false to disable custom armor models.";
              };
              "baubleRender.enabled" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set this to false to disable rendering of baubles in the player.";
              };
              "blockBreakingParticles.enabled" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set this to false to remove the block breaking particles from the flowers and other items in the mod.";
              };
              "blockBreakingParticlesTool.enabled" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set this to false to remove the block breaking particles from the Mana Shatterer, as there can be a good amount in higher levels.";
              };
              "boundBlock.wireframe.enabled" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set this to false to disable the wireframe when looking a block bound to something (spreaders, flowers, etc).";
              };
              "chargeAnimation.enabled" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set this to false to disable the animation when an item is charging on top of a mana pool.";
              };
              "darkQuartz.enabled" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set this to false to disable the Smokey Quartz blocks. This config option is here for those using Thaumic Tinkerer";
              };
              "elfPortal.particles.enabled" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set this to false to disable the particles in the elven portal.";
              };
              "enderPickpocket.enabled" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set to false to disable the ability for the Hand of Ender to pickpocket other players' ender chests.";
              };
              "fallenKanade.enabled" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set this to false to disable the Fallen Kanade flower (gives Regeneration). This config option is here for those using Blood Magic. Note: Turning this off will not remove ones already in the world, it'll simply prevent the crafting.";
              };
              "fancySkybox.customDim" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Set this to true to enable the fancy skybox in custom dimension. (Does not require Garden of Glass loaded to use, needs 'fancySkybox.enable' to be true as well)";
              };
              "fancySkybox.customDimID" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [];
                description = "The ID of the dimension to use";
              };
              "fancySkybox.enable" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set this to false to disable the fancy skybox in Garden of Glass.";
              };
              "fancySkybox.normalWorlds" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Set this to true to enable the fancy skybox in non Garden of Glass worlds. (Does not require Garden of Glass loaded to use, needs 'fancySkybox.enable' to be true as well)";
              };
              "flightBar.height" = lib.mkOption {
                type = lib.types.int;
                default = 49;
                description = "The height of the Flugel Tiara flight bar. You can change this if you have a mod that adds a bar in that spot.";
              };
              "flightBarBreath.height" = lib.mkOption {
                type = lib.types.int;
                default = 59;
                description = "The height of the Flugel Tiara flight bar if your breath bar is shown. You can change this if you have a mod that adds a bar in that spot.";
              };
              "flower.forceCheck" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Turn this off ONLY IF you're on an extremely large world with an exaggerated count of Mana Spreaders/Mana Pools and are experiencing TPS lag. This toggles whether flowers are strict with their checking for connecting to pools/spreaders or just check whenever possible.";
              };
              "flowerParticles.frequency" = lib.mkOption {
                type = lib.types.float;
                default = 0.75;
                description = "The frequency in which particles spawn from normal (worldgen) mystical flowers";
              };
              "flowerTextures.alt" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Set this to true to use alternate flower textures by Futureazoo, not all flowers are textured. http://redd.it/2b3o3f";
              };
              "harvestLevel.boreLens" = lib.mkOption {
                type = lib.types.int;
                default = 3;
                description = "The harvest level of the Mana Lens: Bore. 3 is diamond level. Defaults to 3";
              };
              "harvestLevel.weightLens" = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "The harvest level of the Mana Lens: Weight. 3 is diamond level. Defaults to 2 (iron level)";
              };
              "lexicon.enable.justifiedText" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Set this to true to enable justified text in the Lexica Botania's text pages.";
              };
              "lexicon.enable.rotatingItems" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set this to false to disable the rotating items in the petal and rune entries in the Lexica Botania.";
              };
              "lexicon.render.3D" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set this to false to disable the animated 3D render for the Lexica Botania.";
              };
              "magnetRing.invert" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Set this to true to invert the Ring of Magnetization's controls (from shift to stop to shift to work)";
              };
              "manaBar.height" = lib.mkOption {
                type = lib.types.int;
                default = 29;
                description = "The height of the mana display bar in above the XP bar. You can change this if you have a mod that changes where the XP bar is.";
              };
              "manaEnchanter.enabled" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set this to false to disable the Mana Enchanter. Since some people find it OP or something. This only disables the entry and creation. Old ones that are already in the world will stay.";
              };
              "manaFluxfield.enabled" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set this to false to disable the Mana Fluxfield (generates RF from mana). This only disables the entry and creation. Old ones that are already in the world will stay.";
              };
              "manaSpreaders.silent" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Set this to true to disable the mana spreader shooting sound.";
              };
              "matrixMode.enabled" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Set this to true if you are the chosen one. For lovers of glitch art and just general mad people.";
              };
              noMobSpawnOnBlocks = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Mobs cannot Spawn on Blocks";
              };
              "passiveDecay.time" = lib.mkOption {
                type = lib.types.int;
                default = 72000;
                description = "The amount of time it takes a Passive flower to decay and turn into a dead bush. Defaults to 72000, 60 minutes. Setting this to -1 disables the feature altogether.";
              };
              "powerSystem.subtle" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Set this to true to set the power system's particles to be a lot more subtle. Good for low-end systems, if the particles are causing lag.";
              };
              "pylonModel.old" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Set this to true to use the old (non-.obj, pre beta18) pylon model";
              };
              "quickLookup.useShift" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Set this to true to use Shift instead of Ctrl for the inventory lexica botania quick lookup feature.";
              };
              "recipes.enabled" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enables all built-in recipes. This can be false for expert modpacks that wish to supply their own.";
              };
              "references.enabled" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set this to false to disable the references in the flower tooltips. (You monster D:)";
              };
              "relics.enabled" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set this to false to disable the Relic System. This only disables the entries, drops and achievements. Old ones that are already in the world will stay.";
              };
              "ringOfOdin.fireResist" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set this to false to make the Ring of Odin not apply fire resistance. Mostly for people who use Witchery transformations.";
              };
              "seasonalFeatures.enabled" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set this to false to disable seasonal features, such as halloween and christmas.";
              };
              "shaders.enabled" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set this to false to disable the use of shaders for some of the mod's renders.";
              };
              "shaders.secondaryUnit" = lib.mkOption {
                type = lib.types.int;
                default = 7;
                description = "The GL Texture Unit to use for the secondary sampler passed in to the Lexica Botania's category button shader. DO NOT TOUCH THIS IF YOU DON'T KNOW WHAT YOU'RE DOING";
              };
              showF3Debug = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Turn on or off the debug info in the F3 screen ingame";
              };
              "spreader.posShift" = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "Do not ever touch this value if not asked to. Possible symptoms of doing so include your head turning backwards, the appearance of Titans near the walls or you being trapped in a game of Sword Art Online.";
              };
              "thaumraftStabilizers.enabled" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set this to false to disable Thaumcraft Infusion Stabilizing in botania blocks";
              };
              "vanillaParticleConfig.enabled" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set this to false to always display all particles regardless of the \"Particles\" setting in the Vanilla options menu.";
              };
              "wandBeam.static" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Set this to true to use a static wand beam that shows every single position of the burst, similar to the way it used to work on old Botania versions. Warning: Disabled by default because it may be laggy.";
              };
              "worldgen.flower.density" = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "The density of each Botania flower patch generated, defaults to 2, the lower the number, the less each patch will have.";
              };
              "worldgen.flower.dimensionBlacklist" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [];
                description = "Blacklist of which dimension generates Botania flowers.";
              };
              "worldgen.flower.dimensionWhitelist" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [64];
                description = "Whitelist of which dimension generates Botania flowers. Empty means any dimension can.";
              };
              "worldgen.flower.patchChance" = lib.mkOption {
                type = lib.types.int;
                default = 16;
                description = "The inverse chance for a Botania flower patch to be generated, defaults to 16. The higher this value is the less patches will exist and the more flower each will have.";
              };
              "worldgen.flower.patchSize" = lib.mkOption {
                type = lib.types.int;
                default = 6;
                description = "The size of each Botania flower patch, defaults to 6. The larger this is the farther the each patch can spread";
              };
              "worldgen.flower.quantity" = lib.mkOption {
                type = lib.types.int;
                default = 2;
                description = "The quantity of Botania flower patches to generate in the world, defaults to 2, the lower the number the less patches generate.";
              };
              "worldgen.flower.tallChance" = lib.mkOption {
                type = lib.types.float;
                default = 0.05;
                description = "The chance for a Botania flower generated in a patch to be a tall flower. 0.1 is 10%, 1 is 100%. Defaults to 0.05";
              };
              "worldgen.mushroom.dimensionBlacklist" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [];
                description = "Blacklist of which dimension generates Botania mushrooms.";
              };
              "worldgen.mushroom.dimensionWhitelist" = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [7 64];
                description = "Whitelist of which dimension generates Botania mushrooms. Empty means any dimension can.";
              };
              "worldgen.mushroom.quantity" = lib.mkOption {
                type = lib.types.int;
                default = 40;
                description = "The quantity of Botania mushrooms to generate underground, in the world, defaults to 40, the lower the number the less patches generate.";
              };
            };
          };
        };
        potions = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              allure = lib.mkOption {
                type = lib.types.int;
                default = 128;
              };
              bloodthirst = lib.mkOption {
                type = lib.types.int;
                default = 129;
              };
              clear = lib.mkOption {
                type = lib.types.int;
                default = 130;
              };
              emptiness = lib.mkOption {
                type = lib.types.int;
                default = 131;
              };
              featherFeet = lib.mkOption {
                type = lib.types.int;
                default = 132;
              };
              soulCross = lib.mkOption {
                type = lib.types.int;
                default = 133;
              };
            };
          };
        };
        shedding = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "AWWayofTime.AirElemental.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for AWWayofTime.AirElemental";
              };
              "AWWayofTime.AirElemental.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "AWWayofTime.AirElemental.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "AWWayofTime.AirElemental.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "AWWayofTime.BileDemon.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for AWWayofTime.BileDemon";
              };
              "AWWayofTime.BileDemon.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "AWWayofTime.BileDemon.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "AWWayofTime.BileDemon.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "AWWayofTime.BoulderFist.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for AWWayofTime.BoulderFist";
              };
              "AWWayofTime.BoulderFist.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "AWWayofTime.BoulderFist.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "AWWayofTime.BoulderFist.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "AWWayofTime.EarthElemental.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for AWWayofTime.EarthElemental";
              };
              "AWWayofTime.EarthElemental.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "AWWayofTime.EarthElemental.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "AWWayofTime.EarthElemental.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "AWWayofTime.FallenAngel.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for AWWayofTime.FallenAngel";
              };
              "AWWayofTime.FallenAngel.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "AWWayofTime.FallenAngel.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "AWWayofTime.FallenAngel.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "AWWayofTime.FireElemental.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for AWWayofTime.FireElemental";
              };
              "AWWayofTime.FireElemental.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "AWWayofTime.FireElemental.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "AWWayofTime.FireElemental.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "AWWayofTime.HolyElemental.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for AWWayofTime.HolyElemental";
              };
              "AWWayofTime.HolyElemental.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "AWWayofTime.HolyElemental.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "AWWayofTime.HolyElemental.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "AWWayofTime.IceDemon.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for AWWayofTime.IceDemon";
              };
              "AWWayofTime.IceDemon.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "AWWayofTime.IceDemon.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "AWWayofTime.IceDemon.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "AWWayofTime.LowerGuardian.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for AWWayofTime.LowerGuardian";
              };
              "AWWayofTime.LowerGuardian.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "AWWayofTime.LowerGuardian.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "AWWayofTime.LowerGuardian.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "AWWayofTime.MinorDemonGrunt.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for AWWayofTime.MinorDemonGrunt";
              };
              "AWWayofTime.MinorDemonGrunt.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "AWWayofTime.MinorDemonGrunt.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "AWWayofTime.MinorDemonGrunt.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "AWWayofTime.MinorDemonGruntEarth.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for AWWayofTime.MinorDemonGruntEarth";
              };
              "AWWayofTime.MinorDemonGruntEarth.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "AWWayofTime.MinorDemonGruntEarth.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "AWWayofTime.MinorDemonGruntEarth.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "AWWayofTime.MinorDemonGruntFire.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for AWWayofTime.MinorDemonGruntFire";
              };
              "AWWayofTime.MinorDemonGruntFire.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "AWWayofTime.MinorDemonGruntFire.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "AWWayofTime.MinorDemonGruntFire.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "AWWayofTime.MinorDemonGruntGuardian.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for AWWayofTime.MinorDemonGruntGuardian";
              };
              "AWWayofTime.MinorDemonGruntGuardian.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "AWWayofTime.MinorDemonGruntGuardian.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "AWWayofTime.MinorDemonGruntGuardian.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "AWWayofTime.MinorDemonGruntGuardianEarth.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for AWWayofTime.MinorDemonGruntGuardianEarth";
              };
              "AWWayofTime.MinorDemonGruntGuardianEarth.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "AWWayofTime.MinorDemonGruntGuardianEarth.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "AWWayofTime.MinorDemonGruntGuardianEarth.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "AWWayofTime.MinorDemonGruntGuardianFire.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for AWWayofTime.MinorDemonGruntGuardianFire";
              };
              "AWWayofTime.MinorDemonGruntGuardianFire.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "AWWayofTime.MinorDemonGruntGuardianFire.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "AWWayofTime.MinorDemonGruntGuardianFire.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "AWWayofTime.MinorDemonGruntGuardianIce.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for AWWayofTime.MinorDemonGruntGuardianIce";
              };
              "AWWayofTime.MinorDemonGruntGuardianIce.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "AWWayofTime.MinorDemonGruntGuardianIce.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "AWWayofTime.MinorDemonGruntGuardianIce.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "AWWayofTime.MinorDemonGruntGuardianWind.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for AWWayofTime.MinorDemonGruntGuardianWind";
              };
              "AWWayofTime.MinorDemonGruntGuardianWind.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "AWWayofTime.MinorDemonGruntGuardianWind.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "AWWayofTime.MinorDemonGruntGuardianWind.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "AWWayofTime.MinorDemonGruntIce.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for AWWayofTime.MinorDemonGruntIce";
              };
              "AWWayofTime.MinorDemonGruntIce.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "AWWayofTime.MinorDemonGruntIce.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "AWWayofTime.MinorDemonGruntIce.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "AWWayofTime.MinorDemonGruntWind.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for AWWayofTime.MinorDemonGruntWind";
              };
              "AWWayofTime.MinorDemonGruntWind.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "AWWayofTime.MinorDemonGruntWind.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "AWWayofTime.MinorDemonGruntWind.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "AWWayofTime.Shade.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for AWWayofTime.Shade";
              };
              "AWWayofTime.Shade.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "AWWayofTime.Shade.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "AWWayofTime.Shade.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "AWWayofTime.ShadeElemental.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for AWWayofTime.ShadeElemental";
              };
              "AWWayofTime.ShadeElemental.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "AWWayofTime.ShadeElemental.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "AWWayofTime.ShadeElemental.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "AWWayofTime.SmallEarthGolem.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for AWWayofTime.SmallEarthGolem";
              };
              "AWWayofTime.SmallEarthGolem.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "AWWayofTime.SmallEarthGolem.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "AWWayofTime.SmallEarthGolem.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "AWWayofTime.WaterElemental.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for AWWayofTime.WaterElemental";
              };
              "AWWayofTime.WaterElemental.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "AWWayofTime.WaterElemental.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "AWWayofTime.WaterElemental.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "AWWayofTime.WingedFireDemon.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for AWWayofTime.WingedFireDemon";
              };
              "AWWayofTime.WingedFireDemon.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "AWWayofTime.WingedFireDemon.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "AWWayofTime.WingedFireDemon.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "Automagy.WispNether.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for Automagy.WispNether";
              };
              "Automagy.WispNether.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Automagy.WispNether.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Automagy.WispNether.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "Bat.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for Bat";
              };
              "Bat.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Bat.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Bat.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "BiomesOPlenty.Bird.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for BiomesOPlenty.Bird";
              };
              "BiomesOPlenty.Bird.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "BiomesOPlenty.Bird.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "BiomesOPlenty.Bird.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "BiomesOPlenty.Glob.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for BiomesOPlenty.Glob";
              };
              "BiomesOPlenty.Glob.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "BiomesOPlenty.Glob.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "BiomesOPlenty.Glob.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "BiomesOPlenty.JungleSpider.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for BiomesOPlenty.JungleSpider";
              };
              "BiomesOPlenty.JungleSpider.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "BiomesOPlenty.JungleSpider.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "BiomesOPlenty.JungleSpider.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "BiomesOPlenty.Phantom.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for BiomesOPlenty.Phantom";
              };
              "BiomesOPlenty.Phantom.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "BiomesOPlenty.Phantom.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "BiomesOPlenty.Phantom.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "BiomesOPlenty.Pixie.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for BiomesOPlenty.Pixie";
              };
              "BiomesOPlenty.Pixie.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "BiomesOPlenty.Pixie.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "BiomesOPlenty.Pixie.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "BiomesOPlenty.Rosester.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for BiomesOPlenty.Rosester";
              };
              "BiomesOPlenty.Rosester.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "BiomesOPlenty.Rosester.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "BiomesOPlenty.Rosester.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "BiomesOPlenty.Wasp.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for BiomesOPlenty.Wasp";
              };
              "BiomesOPlenty.Wasp.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "BiomesOPlenty.Wasp.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "BiomesOPlenty.Wasp.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "Blaze.item" = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:blaze_powder";
                description = "Configuration of Shedding for Blaze";
              };
              "Blaze.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Blaze.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Blaze.rate" = lib.mkOption {
                type = lib.types.int;
                default = 8000;
              };
              "Botania.botania:doppleganger.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for Botania.botania:doppleganger";
              };
              "Botania.botania:doppleganger.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Botania.botania:doppleganger.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Botania.botania:doppleganger.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "Botania.botania:pinkWither.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for Botania.botania:pinkWither";
              };
              "Botania.botania:pinkWither.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Botania.botania:pinkWither.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Botania.botania:pinkWither.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "Botania.botania:pixie.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for Botania.botania:pixie";
              };
              "Botania.botania:pixie.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Botania.botania:pixie.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Botania.botania:pixie.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "BuildCraft|Robotics.bcRobot.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for BuildCraft|Robotics.bcRobot";
              };
              "BuildCraft|Robotics.bcRobot.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "BuildCraft|Robotics.bcRobot.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "BuildCraft|Robotics.bcRobot.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "CaveSpider.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for CaveSpider";
              };
              "CaveSpider.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "CaveSpider.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "CaveSpider.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "Chicken.item" = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:feather";
                description = "Configuration of Shedding for Chicken";
              };
              "Chicken.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              "Chicken.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Chicken.rate" = lib.mkOption {
                type = lib.types.int;
                default = 26000;
              };
              "Cow.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for Cow";
              };
              "Cow.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Cow.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Cow.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "Creeper.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for Creeper";
              };
              "Creeper.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Creeper.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Creeper.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "DraconicEvolution.ChaosGuardian.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for DraconicEvolution.ChaosGuardian";
              };
              "DraconicEvolution.ChaosGuardian.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "DraconicEvolution.ChaosGuardian.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "DraconicEvolution.ChaosGuardian.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "DraconicEvolution.EnderDragon.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for DraconicEvolution.EnderDragon";
              };
              "DraconicEvolution.EnderDragon.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "DraconicEvolution.EnderDragon.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "DraconicEvolution.EnderDragon.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "EMT.archer.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for EMT.archer";
              };
              "EMT.archer.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "EMT.archer.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "EMT.archer.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "EnderDragon.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for EnderDragon";
              };
              "EnderDragon.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "EnderDragon.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "EnderDragon.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "Enderman.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for Enderman";
              };
              "Enderman.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Enderman.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Enderman.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "EntityHorse.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for EntityHorse";
              };
              "EntityHorse.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "EntityHorse.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "EntityHorse.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "Forestry.butterflyGE.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for Forestry.butterflyGE";
              };
              "Forestry.butterflyGE.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Forestry.butterflyGE.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Forestry.butterflyGE.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "GalacticraftCore.AlienVillager.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for GalacticraftCore.AlienVillager";
              };
              "GalacticraftCore.AlienVillager.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "GalacticraftCore.AlienVillager.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "GalacticraftCore.AlienVillager.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "GalacticraftCore.Crawler.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for GalacticraftCore.Crawler";
              };
              "GalacticraftCore.Crawler.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "GalacticraftCore.Crawler.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "GalacticraftCore.Crawler.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "GalacticraftCore.EvolvedBlaze.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for GalacticraftCore.EvolvedBlaze";
              };
              "GalacticraftCore.EvolvedBlaze.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "GalacticraftCore.EvolvedBlaze.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "GalacticraftCore.EvolvedBlaze.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "GalacticraftCore.EvolvedBossBlaze.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for GalacticraftCore.EvolvedBossBlaze";
              };
              "GalacticraftCore.EvolvedBossBlaze.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "GalacticraftCore.EvolvedBossBlaze.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "GalacticraftCore.EvolvedBossBlaze.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "GalacticraftCore.EvolvedBossGhast.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for GalacticraftCore.EvolvedBossGhast";
              };
              "GalacticraftCore.EvolvedBossGhast.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "GalacticraftCore.EvolvedBossGhast.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "GalacticraftCore.EvolvedBossGhast.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "GalacticraftCore.EvolvedBossSlime.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for GalacticraftCore.EvolvedBossSlime";
              };
              "GalacticraftCore.EvolvedBossSlime.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "GalacticraftCore.EvolvedBossSlime.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "GalacticraftCore.EvolvedBossSlime.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "GalacticraftCore.EvolvedBossWolf.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for GalacticraftCore.EvolvedBossWolf";
              };
              "GalacticraftCore.EvolvedBossWolf.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "GalacticraftCore.EvolvedBossWolf.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "GalacticraftCore.EvolvedBossWolf.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "GalacticraftCore.EvolvedColdBlaze.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for GalacticraftCore.EvolvedColdBlaze";
              };
              "GalacticraftCore.EvolvedColdBlaze.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "GalacticraftCore.EvolvedColdBlaze.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "GalacticraftCore.EvolvedColdBlaze.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "GalacticraftCore.EvolvedCreeper.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for GalacticraftCore.EvolvedCreeper";
              };
              "GalacticraftCore.EvolvedCreeper.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "GalacticraftCore.EvolvedCreeper.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "GalacticraftCore.EvolvedCreeper.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "GalacticraftCore.EvolvedCrystalBoss.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for GalacticraftCore.EvolvedCrystalBoss";
              };
              "GalacticraftCore.EvolvedCrystalBoss.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "GalacticraftCore.EvolvedCrystalBoss.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "GalacticraftCore.EvolvedCrystalBoss.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "GalacticraftCore.EvolvedEnderman.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for GalacticraftCore.EvolvedEnderman";
              };
              "GalacticraftCore.EvolvedEnderman.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "GalacticraftCore.EvolvedEnderman.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "GalacticraftCore.EvolvedEnderman.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "GalacticraftCore.EvolvedFireCreeper.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for GalacticraftCore.EvolvedFireCreeper";
              };
              "GalacticraftCore.EvolvedFireCreeper.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "GalacticraftCore.EvolvedFireCreeper.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "GalacticraftCore.EvolvedFireCreeper.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "GalacticraftCore.EvolvedFireSkeleton.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for GalacticraftCore.EvolvedFireSkeleton";
              };
              "GalacticraftCore.EvolvedFireSkeleton.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "GalacticraftCore.EvolvedFireSkeleton.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "GalacticraftCore.EvolvedFireSkeleton.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "GalacticraftCore.EvolvedFireSpider.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for GalacticraftCore.EvolvedFireSpider";
              };
              "GalacticraftCore.EvolvedFireSpider.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "GalacticraftCore.EvolvedFireSpider.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "GalacticraftCore.EvolvedFireSpider.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "GalacticraftCore.EvolvedSkeleton.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for GalacticraftCore.EvolvedSkeleton";
              };
              "GalacticraftCore.EvolvedSkeleton.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "GalacticraftCore.EvolvedSkeleton.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "GalacticraftCore.EvolvedSkeleton.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "GalacticraftCore.EvolvedSkeletonBoss.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for GalacticraftCore.EvolvedSkeletonBoss";
              };
              "GalacticraftCore.EvolvedSkeletonBoss.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "GalacticraftCore.EvolvedSkeletonBoss.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "GalacticraftCore.EvolvedSkeletonBoss.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "GalacticraftCore.EvolvedSpider.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for GalacticraftCore.EvolvedSpider";
              };
              "GalacticraftCore.EvolvedSpider.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "GalacticraftCore.EvolvedSpider.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "GalacticraftCore.EvolvedSpider.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "GalacticraftCore.EvolvedZombie.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for GalacticraftCore.EvolvedZombie";
              };
              "GalacticraftCore.EvolvedZombie.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "GalacticraftCore.EvolvedZombie.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "GalacticraftCore.EvolvedZombie.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "GalacticraftCore.Tentacles.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for GalacticraftCore.Tentacles";
              };
              "GalacticraftCore.Tentacles.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "GalacticraftCore.Tentacles.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "GalacticraftCore.Tentacles.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "GalacticraftMars.CreeperBoss.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for GalacticraftMars.CreeperBoss";
              };
              "GalacticraftMars.CreeperBoss.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "GalacticraftMars.CreeperBoss.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "GalacticraftMars.CreeperBoss.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "GalacticraftMars.Slimeling.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for GalacticraftMars.Slimeling";
              };
              "GalacticraftMars.Slimeling.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "GalacticraftMars.Slimeling.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "GalacticraftMars.Slimeling.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "GalacticraftMars.Sludgeling.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for GalacticraftMars.Sludgeling";
              };
              "GalacticraftMars.Sludgeling.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "GalacticraftMars.Sludgeling.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "GalacticraftMars.Sludgeling.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "Ghast.item" = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:ghast_tear";
                description = "Configuration of Shedding for Ghast";
              };
              "Ghast.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 30;
              };
              "Ghast.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Ghast.rate" = lib.mkOption {
                type = lib.types.int;
                default = 9001;
              };
              "Giant.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for Giant";
              };
              "Giant.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Giant.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Giant.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "HardcoreEnderExpansion.AngryEnderman.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for HardcoreEnderExpansion.AngryEnderman";
              };
              "HardcoreEnderExpansion.AngryEnderman.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "HardcoreEnderExpansion.AngryEnderman.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "HardcoreEnderExpansion.AngryEnderman.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "HardcoreEnderExpansion.BabyEnderman.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for HardcoreEnderExpansion.BabyEnderman";
              };
              "HardcoreEnderExpansion.BabyEnderman.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "HardcoreEnderExpansion.BabyEnderman.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "HardcoreEnderExpansion.BabyEnderman.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "HardcoreEnderExpansion.Dragon.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for HardcoreEnderExpansion.Dragon";
              };
              "HardcoreEnderExpansion.Dragon.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "HardcoreEnderExpansion.Dragon.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "HardcoreEnderExpansion.Dragon.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "HardcoreEnderExpansion.EnderDemon.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for HardcoreEnderExpansion.EnderDemon";
              };
              "HardcoreEnderExpansion.EnderDemon.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "HardcoreEnderExpansion.EnderDemon.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "HardcoreEnderExpansion.EnderDemon.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "HardcoreEnderExpansion.EnderEye.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for HardcoreEnderExpansion.EnderEye";
              };
              "HardcoreEnderExpansion.EnderEye.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "HardcoreEnderExpansion.EnderEye.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "HardcoreEnderExpansion.EnderEye.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "HardcoreEnderExpansion.EnderGuardian.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for HardcoreEnderExpansion.EnderGuardian";
              };
              "HardcoreEnderExpansion.EnderGuardian.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "HardcoreEnderExpansion.EnderGuardian.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "HardcoreEnderExpansion.EnderGuardian.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "HardcoreEnderExpansion.Endermage.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for HardcoreEnderExpansion.Endermage";
              };
              "HardcoreEnderExpansion.Endermage.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "HardcoreEnderExpansion.Endermage.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "HardcoreEnderExpansion.Endermage.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "HardcoreEnderExpansion.FireFiend.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for HardcoreEnderExpansion.FireFiend";
              };
              "HardcoreEnderExpansion.FireFiend.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "HardcoreEnderExpansion.FireFiend.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "HardcoreEnderExpansion.FireFiend.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "HardcoreEnderExpansion.FireGolem.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for HardcoreEnderExpansion.FireGolem";
              };
              "HardcoreEnderExpansion.FireGolem.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "HardcoreEnderExpansion.FireGolem.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "HardcoreEnderExpansion.FireGolem.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "HardcoreEnderExpansion.ForestGhost.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for HardcoreEnderExpansion.ForestGhost";
              };
              "HardcoreEnderExpansion.ForestGhost.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "HardcoreEnderExpansion.ForestGhost.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "HardcoreEnderExpansion.ForestGhost.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "HardcoreEnderExpansion.HauntedMiner.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for HardcoreEnderExpansion.HauntedMiner";
              };
              "HardcoreEnderExpansion.HauntedMiner.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "HardcoreEnderExpansion.HauntedMiner.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "HardcoreEnderExpansion.HauntedMiner.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "HardcoreEnderExpansion.HomelandEnderman.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for HardcoreEnderExpansion.HomelandEnderman";
              };
              "HardcoreEnderExpansion.HomelandEnderman.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "HardcoreEnderExpansion.HomelandEnderman.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "HardcoreEnderExpansion.HomelandEnderman.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "HardcoreEnderExpansion.InfestedBat.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for HardcoreEnderExpansion.InfestedBat";
              };
              "HardcoreEnderExpansion.InfestedBat.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "HardcoreEnderExpansion.InfestedBat.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "HardcoreEnderExpansion.InfestedBat.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "HardcoreEnderExpansion.Louse.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for HardcoreEnderExpansion.Louse";
              };
              "HardcoreEnderExpansion.Louse.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "HardcoreEnderExpansion.Louse.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "HardcoreEnderExpansion.Louse.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "HardcoreEnderExpansion.ParalyzedEnderman.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for HardcoreEnderExpansion.ParalyzedEnderman";
              };
              "HardcoreEnderExpansion.ParalyzedEnderman.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "HardcoreEnderExpansion.ParalyzedEnderman.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "HardcoreEnderExpansion.ParalyzedEnderman.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "HardcoreEnderExpansion.ScorchedLens.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for HardcoreEnderExpansion.ScorchedLens";
              };
              "HardcoreEnderExpansion.ScorchedLens.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "HardcoreEnderExpansion.ScorchedLens.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "HardcoreEnderExpansion.ScorchedLens.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "HardcoreEnderExpansion.VampireBat.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for HardcoreEnderExpansion.VampireBat";
              };
              "HardcoreEnderExpansion.VampireBat.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "HardcoreEnderExpansion.VampireBat.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "HardcoreEnderExpansion.VampireBat.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "LavaSlime.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for LavaSlime";
              };
              "LavaSlime.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "LavaSlime.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "LavaSlime.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "Mob.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for Mob";
              };
              "Mob.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Mob.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Mob.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "Monster.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for Monster";
              };
              "Monster.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Monster.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Monster.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "MushroomCow.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for MushroomCow";
              };
              "MushroomCow.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "MushroomCow.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "MushroomCow.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "Natura.FlameSpider.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for Natura.FlameSpider";
              };
              "Natura.FlameSpider.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Natura.FlameSpider.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Natura.FlameSpider.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "Natura.FlameSpiderBaby.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for Natura.FlameSpiderBaby";
              };
              "Natura.FlameSpiderBaby.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Natura.FlameSpiderBaby.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Natura.FlameSpiderBaby.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "Natura.Imp.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for Natura.Imp";
              };
              "Natura.Imp.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Natura.Imp.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Natura.Imp.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "Natura.NitroCreeper.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for Natura.NitroCreeper";
              };
              "Natura.NitroCreeper.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Natura.NitroCreeper.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Natura.NitroCreeper.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "OpenBlocks.Luggage.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for OpenBlocks.Luggage";
              };
              "OpenBlocks.Luggage.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "OpenBlocks.Luggage.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "OpenBlocks.Luggage.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "OpenBlocks.MiniMe.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for OpenBlocks.MiniMe";
              };
              "OpenBlocks.MiniMe.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "OpenBlocks.MiniMe.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "OpenBlocks.MiniMe.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "Ozelot.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for Ozelot";
              };
              "Ozelot.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Ozelot.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Ozelot.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "Pig.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for Pig";
              };
              "Pig.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Pig.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Pig.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "PigZombie.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for PigZombie";
              };
              "PigZombie.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "PigZombie.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "PigZombie.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "RandomThings.spirit.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for RandomThings.spirit";
              };
              "RandomThings.spirit.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "RandomThings.spirit.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "RandomThings.spirit.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "Sheep.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for Sheep";
              };
              "Sheep.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Sheep.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Sheep.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "Silverfish.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for Silverfish";
              };
              "Silverfish.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Silverfish.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Silverfish.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "Skeleton.item" = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:bone";
                description = "Configuration of Shedding for Skeleton";
              };
              "Skeleton.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Skeleton.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Skeleton.rate" = lib.mkOption {
                type = lib.types.int;
                default = 36000;
              };
              "Slime.item" = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:slime_ball";
                description = "Configuration of Shedding for Slime";
              };
              "Slime.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Slime.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Slime.rate" = lib.mkOption {
                type = lib.types.int;
                default = 21000;
              };
              "SnowMan.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SnowMan";
              };
              "SnowMan.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SnowMan.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SnowMan.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.ArmorCreeper.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.ArmorCreeper";
              };
              "SpecialMobs.ArmorCreeper.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.ArmorCreeper.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.ArmorCreeper.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.BabyCaveSpider.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.BabyCaveSpider";
              };
              "SpecialMobs.BabyCaveSpider.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.BabyCaveSpider.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.BabyCaveSpider.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.BabyGhast.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.BabyGhast";
              };
              "SpecialMobs.BabyGhast.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.BabyGhast.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.BabyGhast.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.BabySpider.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.BabySpider";
              };
              "SpecialMobs.BabySpider.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.BabySpider.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.BabySpider.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.BlackberrySlime.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.BlackberrySlime";
              };
              "SpecialMobs.BlackberrySlime.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.BlackberrySlime.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.BlackberrySlime.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.BlindingEnderman.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.BlindingEnderman";
              };
              "SpecialMobs.BlindingEnderman.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.BlindingEnderman.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.BlindingEnderman.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.BlindingSilverfish.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.BlindingSilverfish";
              };
              "SpecialMobs.BlindingSilverfish.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.BlindingSilverfish.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.BlindingSilverfish.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.BlueberrySlime.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.BlueberrySlime";
              };
              "SpecialMobs.BlueberrySlime.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.BlueberrySlime.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.BlueberrySlime.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.BrutishPigZombie.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.BrutishPigZombie";
              };
              "SpecialMobs.BrutishPigZombie.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.BrutishPigZombie.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.BrutishPigZombie.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.BrutishSkeleton.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.BrutishSkeleton";
              };
              "SpecialMobs.BrutishSkeleton.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.BrutishSkeleton.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.BrutishSkeleton.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.BrutishZombie.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.BrutishZombie";
              };
              "SpecialMobs.BrutishZombie.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.BrutishZombie.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.BrutishZombie.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.CaramelSlime.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.CaramelSlime";
              };
              "SpecialMobs.CaramelSlime.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.CaramelSlime.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.CaramelSlime.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.CinderBlaze.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.CinderBlaze";
              };
              "SpecialMobs.CinderBlaze.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.CinderBlaze.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.CinderBlaze.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.ConflagrationBlaze.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.ConflagrationBlaze";
              };
              "SpecialMobs.ConflagrationBlaze.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.ConflagrationBlaze.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.ConflagrationBlaze.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.CursedEnderman.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.CursedEnderman";
              };
              "SpecialMobs.CursedEnderman.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.CursedEnderman.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.CursedEnderman.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.DarkCreeper.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.DarkCreeper";
              };
              "SpecialMobs.DarkCreeper.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.DarkCreeper.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.DarkCreeper.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.DeathCreeper.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.DeathCreeper";
              };
              "SpecialMobs.DeathCreeper.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.DeathCreeper.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.DeathCreeper.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.DesertSpider.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.DesertSpider";
              };
              "SpecialMobs.DesertSpider.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.DesertSpider.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.DesertSpider.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.DirtCreeper.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.DirtCreeper";
              };
              "SpecialMobs.DirtCreeper.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.DirtCreeper.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.DirtCreeper.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.DominationWitch.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.DominationWitch";
              };
              "SpecialMobs.DominationWitch.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.DominationWitch.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.DominationWitch.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.DoomCreeper.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.DoomCreeper";
              };
              "SpecialMobs.DoomCreeper.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.DoomCreeper.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.DoomCreeper.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.DrowningCreeper.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.DrowningCreeper";
              };
              "SpecialMobs.DrowningCreeper.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.DrowningCreeper.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.DrowningCreeper.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.EmberBlaze.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.EmberBlaze";
              };
              "SpecialMobs.EmberBlaze.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.EmberBlaze.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.EmberBlaze.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.EnderCreeper.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.EnderCreeper";
              };
              "SpecialMobs.EnderCreeper.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.EnderCreeper.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.EnderCreeper.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.FaintGhast.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.FaintGhast";
              };
              "SpecialMobs.FaintGhast.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.FaintGhast.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.FaintGhast.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.FighterGhast.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.FighterGhast";
              };
              "SpecialMobs.FighterGhast.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.FighterGhast.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.FighterGhast.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.FireCreeper.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.FireCreeper";
              };
              "SpecialMobs.FireCreeper.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.FireCreeper.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.FireCreeper.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.FireSkeleton.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.FireSkeleton";
              };
              "SpecialMobs.FireSkeleton.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.FireSkeleton.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.FireSkeleton.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.FireZombie.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.FireZombie";
              };
              "SpecialMobs.FireZombie.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.FireZombie.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.FireZombie.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.FishingPigZombie.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.FishingPigZombie";
              };
              "SpecialMobs.FishingPigZombie.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.FishingPigZombie.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.FishingPigZombie.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.FishingSilverfish.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.FishingSilverfish";
              };
              "SpecialMobs.FishingSilverfish.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.FishingSilverfish.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.FishingSilverfish.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.FishingZombie.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.FishingZombie";
              };
              "SpecialMobs.FishingZombie.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.FishingZombie.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.FishingZombie.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.FlyingCaveSpider.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.FlyingCaveSpider";
              };
              "SpecialMobs.FlyingCaveSpider.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.FlyingCaveSpider.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.FlyingCaveSpider.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.FlyingSilverfish.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.FlyingSilverfish";
              };
              "SpecialMobs.FlyingSilverfish.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.FlyingSilverfish.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.FlyingSilverfish.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.FlyingSpider.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.FlyingSpider";
              };
              "SpecialMobs.FlyingSpider.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.FlyingSpider.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.FlyingSpider.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.GatlingSkeleton.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.GatlingSkeleton";
              };
              "SpecialMobs.GatlingSkeleton.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.GatlingSkeleton.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.GatlingSkeleton.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.GhostSpider.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.GhostSpider";
              };
              "SpecialMobs.GhostSpider.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.GhostSpider.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.GhostSpider.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.GiantPigZombie.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.GiantPigZombie";
              };
              "SpecialMobs.GiantPigZombie.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.GiantPigZombie.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.GiantPigZombie.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.GiantSkeleton.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.GiantSkeleton";
              };
              "SpecialMobs.GiantSkeleton.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.GiantSkeleton.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.GiantSkeleton.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.GiantSpider.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.GiantSpider";
              };
              "SpecialMobs.GiantSpider.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.GiantSpider.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.GiantSpider.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.GiantZombie.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.GiantZombie";
              };
              "SpecialMobs.GiantZombie.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.GiantZombie.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.GiantZombie.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.GrapeSlime.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.GrapeSlime";
              };
              "SpecialMobs.GrapeSlime.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.GrapeSlime.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.GrapeSlime.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.GravelCreeper.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.GravelCreeper";
              };
              "SpecialMobs.GravelCreeper.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.GravelCreeper.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.GravelCreeper.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.GravityCreeper.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.GravityCreeper";
              };
              "SpecialMobs.GravityCreeper.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.GravityCreeper.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.GravityCreeper.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.HellfireBlaze.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.HellfireBlaze";
              };
              "SpecialMobs.HellfireBlaze.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.HellfireBlaze.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.HellfireBlaze.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.HungryPigZombie.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.HungryPigZombie";
              };
              "SpecialMobs.HungryPigZombie.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.HungryPigZombie.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.HungryPigZombie.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.HungrySpider.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.HungrySpider";
              };
              "SpecialMobs.HungrySpider.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.HungrySpider.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.HungrySpider.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.HungryZombie.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.HungryZombie";
              };
              "SpecialMobs.HungryZombie.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.HungryZombie.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.HungryZombie.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.IcyEnderman.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.IcyEnderman";
              };
              "SpecialMobs.IcyEnderman.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.IcyEnderman.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.IcyEnderman.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.InfernoBlaze.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.InfernoBlaze";
              };
              "SpecialMobs.InfernoBlaze.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.InfernoBlaze.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.InfernoBlaze.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.JoltBlaze.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.JoltBlaze";
              };
              "SpecialMobs.JoltBlaze.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.JoltBlaze.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.JoltBlaze.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.JumpingCreeper.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.JumpingCreeper";
              };
              "SpecialMobs.JumpingCreeper.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.JumpingCreeper.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.JumpingCreeper.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.KingGhast.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.KingGhast";
              };
              "SpecialMobs.KingGhast.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.KingGhast.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.KingGhast.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.LavaMonster.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.LavaMonster";
              };
              "SpecialMobs.LavaMonster.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.LavaMonster.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.LavaMonster.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.LemonSlime.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.LemonSlime";
              };
              "SpecialMobs.LemonSlime.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.LemonSlime.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.LemonSlime.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.LightningCreeper.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.LightningCreeper";
              };
              "SpecialMobs.LightningCreeper.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.LightningCreeper.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.LightningCreeper.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.LightningEnderman.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.LightningEnderman";
              };
              "SpecialMobs.LightningEnderman.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.LightningEnderman.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.LightningEnderman.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.MiniCreeper.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.MiniCreeper";
              };
              "SpecialMobs.MiniCreeper.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.MiniCreeper.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.MiniCreeper.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.MiniEnderman.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.MiniEnderman";
              };
              "SpecialMobs.MiniEnderman.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.MiniEnderman.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.MiniEnderman.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.MiniGhast.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.MiniGhast";
              };
              "SpecialMobs.MiniGhast.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.MiniGhast.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.MiniGhast.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.MirageEnderman.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.MirageEnderman";
              };
              "SpecialMobs.MirageEnderman.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.MirageEnderman.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.MirageEnderman.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.MotherCaveSpider.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.MotherCaveSpider";
              };
              "SpecialMobs.MotherCaveSpider.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.MotherCaveSpider.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.MotherCaveSpider.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.MotherSpider.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.MotherSpider";
              };
              "SpecialMobs.MotherSpider.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.MotherSpider.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.MotherSpider.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.NinjaSkeleton.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.NinjaSkeleton";
              };
              "SpecialMobs.NinjaSkeleton.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.NinjaSkeleton.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.NinjaSkeleton.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.PaleSpider.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.PaleSpider";
              };
              "SpecialMobs.PaleSpider.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.PaleSpider.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.PaleSpider.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.PlaguePigZombie.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.PlaguePigZombie";
              };
              "SpecialMobs.PlaguePigZombie.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.PlaguePigZombie.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.PlaguePigZombie.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.PlagueZombie.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.PlagueZombie";
              };
              "SpecialMobs.PlagueZombie.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.PlagueZombie.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.PlagueZombie.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.PoisonSilverfish.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.PoisonSilverfish";
              };
              "SpecialMobs.PoisonSilverfish.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.PoisonSilverfish.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.PoisonSilverfish.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.PoisonSkeleton.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.PoisonSkeleton";
              };
              "SpecialMobs.PoisonSkeleton.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.PoisonSkeleton.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.PoisonSkeleton.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.PoisonSpider.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.PoisonSpider";
              };
              "SpecialMobs.PoisonSpider.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.PoisonSpider.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.PoisonSpider.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.QueenGhast.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.QueenGhast";
              };
              "SpecialMobs.QueenGhast.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.QueenGhast.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.QueenGhast.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.RageWitch.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.RageWitch";
              };
              "SpecialMobs.RageWitch.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.RageWitch.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.RageWitch.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.ShadowsWitch.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.ShadowsWitch";
              };
              "SpecialMobs.ShadowsWitch.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.ShadowsWitch.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.ShadowsWitch.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.SmallSpider.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.SmallSpider";
              };
              "SpecialMobs.SmallSpider.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.SmallSpider.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.SmallSpider.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.SmolderBlaze.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.SmolderBlaze";
              };
              "SpecialMobs.SmolderBlaze.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.SmolderBlaze.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.SmolderBlaze.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.SniperSkeleton.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.SniperSkeleton";
              };
              "SpecialMobs.SniperSkeleton.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.SniperSkeleton.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.SniperSkeleton.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.SpecialBlaze.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.SpecialBlaze";
              };
              "SpecialMobs.SpecialBlaze.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.SpecialBlaze.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.SpecialBlaze.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.SpecialCaveSpider.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.SpecialCaveSpider";
              };
              "SpecialMobs.SpecialCaveSpider.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.SpecialCaveSpider.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.SpecialCaveSpider.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.SpecialCreeper.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.SpecialCreeper";
              };
              "SpecialMobs.SpecialCreeper.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.SpecialCreeper.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.SpecialCreeper.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.SpecialEnderman.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.SpecialEnderman";
              };
              "SpecialMobs.SpecialEnderman.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.SpecialEnderman.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.SpecialEnderman.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.SpecialGhast.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.SpecialGhast";
              };
              "SpecialMobs.SpecialGhast.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.SpecialGhast.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.SpecialGhast.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.SpecialPigZombie.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.SpecialPigZombie";
              };
              "SpecialMobs.SpecialPigZombie.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.SpecialPigZombie.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.SpecialPigZombie.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.SpecialSilverfish.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.SpecialSilverfish";
              };
              "SpecialMobs.SpecialSilverfish.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.SpecialSilverfish.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.SpecialSilverfish.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.SpecialSkeleton.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.SpecialSkeleton";
              };
              "SpecialMobs.SpecialSkeleton.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.SpecialSkeleton.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.SpecialSkeleton.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.SpecialSlime.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.SpecialSlime";
              };
              "SpecialMobs.SpecialSlime.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.SpecialSlime.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.SpecialSlime.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.SpecialSpider.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.SpecialSpider";
              };
              "SpecialMobs.SpecialSpider.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.SpecialSpider.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.SpecialSpider.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.SpecialWitch.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.SpecialWitch";
              };
              "SpecialMobs.SpecialWitch.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.SpecialWitch.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.SpecialWitch.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.SpecialZombie.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.SpecialZombie";
              };
              "SpecialMobs.SpecialZombie.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.SpecialZombie.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.SpecialZombie.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.SpitfireSkeleton.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.SpitfireSkeleton";
              };
              "SpecialMobs.SpitfireSkeleton.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.SpitfireSkeleton.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.SpitfireSkeleton.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.SplittingCreeper.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.SplittingCreeper";
              };
              "SpecialMobs.SplittingCreeper.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.SplittingCreeper.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.SplittingCreeper.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.StrawberrySlime.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.StrawberrySlime";
              };
              "SpecialMobs.StrawberrySlime.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.StrawberrySlime.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.StrawberrySlime.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.ThiefEnderman.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.ThiefEnderman";
              };
              "SpecialMobs.ThiefEnderman.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.ThiefEnderman.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.ThiefEnderman.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.ThiefSkeleton.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.ThiefSkeleton";
              };
              "SpecialMobs.ThiefSkeleton.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.ThiefSkeleton.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.ThiefSkeleton.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.ToughCaveSpider.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.ToughCaveSpider";
              };
              "SpecialMobs.ToughCaveSpider.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.ToughCaveSpider.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.ToughCaveSpider.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.ToughSilverfish.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.ToughSilverfish";
              };
              "SpecialMobs.ToughSilverfish.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.ToughSilverfish.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.ToughSilverfish.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.ToughSpider.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.ToughSpider";
              };
              "SpecialMobs.ToughSpider.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.ToughSpider.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.ToughSpider.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.UndeadWitch.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.UndeadWitch";
              };
              "SpecialMobs.UndeadWitch.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.UndeadWitch.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.UndeadWitch.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.UnholyGhast.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.UnholyGhast";
              };
              "SpecialMobs.UnholyGhast.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.UnholyGhast.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.UnholyGhast.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.VampirePigZombie.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.VampirePigZombie";
              };
              "SpecialMobs.VampirePigZombie.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.VampirePigZombie.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.VampirePigZombie.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.WatermelonSlime.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.WatermelonSlime";
              };
              "SpecialMobs.WatermelonSlime.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.WatermelonSlime.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.WatermelonSlime.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.WebCaveSpider.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.WebCaveSpider";
              };
              "SpecialMobs.WebCaveSpider.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.WebCaveSpider.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.WebCaveSpider.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.WebSpider.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.WebSpider";
              };
              "SpecialMobs.WebSpider.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.WebSpider.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.WebSpider.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.WildfireBlaze.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.WildfireBlaze";
              };
              "SpecialMobs.WildfireBlaze.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.WildfireBlaze.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.WildfireBlaze.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.WildsWitch.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.WildsWitch";
              };
              "SpecialMobs.WildsWitch.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.WildsWitch.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.WildsWitch.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.WindWitch.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.WindWitch";
              };
              "SpecialMobs.WindWitch.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.WindWitch.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.WindWitch.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.WitchCaveSpider.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.WitchCaveSpider";
              };
              "SpecialMobs.WitchCaveSpider.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.WitchCaveSpider.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.WitchCaveSpider.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "SpecialMobs.WitchSpider.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for SpecialMobs.WitchSpider";
              };
              "SpecialMobs.WitchSpider.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "SpecialMobs.WitchSpider.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "SpecialMobs.WitchSpider.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "Spider.item" = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:string";
                description = "Configuration of Shedding for Spider";
              };
              "Spider.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Spider.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Spider.rate" = lib.mkOption {
                type = lib.types.int;
                default = 12000;
              };
              "Squid.item" = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:dye";
                description = "Configuration of Shedding for Squid";
              };
              "Squid.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              "Squid.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Squid.rate" = lib.mkOption {
                type = lib.types.int;
                default = 18000;
              };
              "TConstruct.Crystal.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for TConstruct.Crystal";
              };
              "TConstruct.Crystal.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "TConstruct.Crystal.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "TConstruct.Crystal.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "TConstruct.EdibleSlime.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for TConstruct.EdibleSlime";
              };
              "TConstruct.EdibleSlime.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "TConstruct.EdibleSlime.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "TConstruct.EdibleSlime.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "TConstruct.KingSlime.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for TConstruct.KingSlime";
              };
              "TConstruct.KingSlime.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "TConstruct.KingSlime.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "TConstruct.KingSlime.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "Thaumcraft.BrainyZombie.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for Thaumcraft.BrainyZombie";
              };
              "Thaumcraft.BrainyZombie.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Thaumcraft.BrainyZombie.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Thaumcraft.BrainyZombie.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "Thaumcraft.CultistCleric.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for Thaumcraft.CultistCleric";
              };
              "Thaumcraft.CultistCleric.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Thaumcraft.CultistCleric.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Thaumcraft.CultistCleric.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "Thaumcraft.CultistKnight.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for Thaumcraft.CultistKnight";
              };
              "Thaumcraft.CultistKnight.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Thaumcraft.CultistKnight.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Thaumcraft.CultistKnight.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "Thaumcraft.CultistLeader.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for Thaumcraft.CultistLeader";
              };
              "Thaumcraft.CultistLeader.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Thaumcraft.CultistLeader.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Thaumcraft.CultistLeader.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "Thaumcraft.CultistPortal.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for Thaumcraft.CultistPortal";
              };
              "Thaumcraft.CultistPortal.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Thaumcraft.CultistPortal.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Thaumcraft.CultistPortal.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "Thaumcraft.EldritchCrab.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for Thaumcraft.EldritchCrab";
              };
              "Thaumcraft.EldritchCrab.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Thaumcraft.EldritchCrab.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Thaumcraft.EldritchCrab.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "Thaumcraft.EldritchGolem.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for Thaumcraft.EldritchGolem";
              };
              "Thaumcraft.EldritchGolem.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Thaumcraft.EldritchGolem.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Thaumcraft.EldritchGolem.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "Thaumcraft.EldritchGuardian.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for Thaumcraft.EldritchGuardian";
              };
              "Thaumcraft.EldritchGuardian.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Thaumcraft.EldritchGuardian.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Thaumcraft.EldritchGuardian.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "Thaumcraft.EldritchWarden.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for Thaumcraft.EldritchWarden";
              };
              "Thaumcraft.EldritchWarden.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Thaumcraft.EldritchWarden.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Thaumcraft.EldritchWarden.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "Thaumcraft.Firebat.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for Thaumcraft.Firebat";
              };
              "Thaumcraft.Firebat.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Thaumcraft.Firebat.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Thaumcraft.Firebat.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "Thaumcraft.GiantBrainyZombie.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for Thaumcraft.GiantBrainyZombie";
              };
              "Thaumcraft.GiantBrainyZombie.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Thaumcraft.GiantBrainyZombie.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Thaumcraft.GiantBrainyZombie.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "Thaumcraft.Golem.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for Thaumcraft.Golem";
              };
              "Thaumcraft.Golem.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Thaumcraft.Golem.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Thaumcraft.Golem.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "Thaumcraft.InhabitedZombie.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for Thaumcraft.InhabitedZombie";
              };
              "Thaumcraft.InhabitedZombie.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Thaumcraft.InhabitedZombie.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Thaumcraft.InhabitedZombie.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "Thaumcraft.MindSpider.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for Thaumcraft.MindSpider";
              };
              "Thaumcraft.MindSpider.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Thaumcraft.MindSpider.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Thaumcraft.MindSpider.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "Thaumcraft.Pech.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for Thaumcraft.Pech";
              };
              "Thaumcraft.Pech.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Thaumcraft.Pech.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Thaumcraft.Pech.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "Thaumcraft.TaintSpider.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for Thaumcraft.TaintSpider";
              };
              "Thaumcraft.TaintSpider.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Thaumcraft.TaintSpider.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Thaumcraft.TaintSpider.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "Thaumcraft.TaintSpore.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for Thaumcraft.TaintSpore";
              };
              "Thaumcraft.TaintSpore.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Thaumcraft.TaintSpore.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Thaumcraft.TaintSpore.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "Thaumcraft.TaintSwarm.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for Thaumcraft.TaintSwarm";
              };
              "Thaumcraft.TaintSwarm.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Thaumcraft.TaintSwarm.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Thaumcraft.TaintSwarm.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "Thaumcraft.TaintSwarmer.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for Thaumcraft.TaintSwarmer";
              };
              "Thaumcraft.TaintSwarmer.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Thaumcraft.TaintSwarmer.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Thaumcraft.TaintSwarmer.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "Thaumcraft.Taintacle.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for Thaumcraft.Taintacle";
              };
              "Thaumcraft.Taintacle.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Thaumcraft.Taintacle.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Thaumcraft.Taintacle.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "Thaumcraft.TaintacleGiant.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for Thaumcraft.TaintacleGiant";
              };
              "Thaumcraft.TaintacleGiant.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Thaumcraft.TaintacleGiant.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Thaumcraft.TaintacleGiant.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "Thaumcraft.TaintacleTiny.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for Thaumcraft.TaintacleTiny";
              };
              "Thaumcraft.TaintacleTiny.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Thaumcraft.TaintacleTiny.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Thaumcraft.TaintacleTiny.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "Thaumcraft.TaintedChicken.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for Thaumcraft.TaintedChicken";
              };
              "Thaumcraft.TaintedChicken.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Thaumcraft.TaintedChicken.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Thaumcraft.TaintedChicken.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "Thaumcraft.TaintedCow.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for Thaumcraft.TaintedCow";
              };
              "Thaumcraft.TaintedCow.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Thaumcraft.TaintedCow.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Thaumcraft.TaintedCow.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "Thaumcraft.TaintedCreeper.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for Thaumcraft.TaintedCreeper";
              };
              "Thaumcraft.TaintedCreeper.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Thaumcraft.TaintedCreeper.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Thaumcraft.TaintedCreeper.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "Thaumcraft.TaintedPig.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for Thaumcraft.TaintedPig";
              };
              "Thaumcraft.TaintedPig.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Thaumcraft.TaintedPig.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Thaumcraft.TaintedPig.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "Thaumcraft.TaintedSheep.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for Thaumcraft.TaintedSheep";
              };
              "Thaumcraft.TaintedSheep.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Thaumcraft.TaintedSheep.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Thaumcraft.TaintedSheep.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "Thaumcraft.TaintedVillager.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for Thaumcraft.TaintedVillager";
              };
              "Thaumcraft.TaintedVillager.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Thaumcraft.TaintedVillager.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Thaumcraft.TaintedVillager.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "Thaumcraft.ThaumSlime.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for Thaumcraft.ThaumSlime";
              };
              "Thaumcraft.ThaumSlime.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Thaumcraft.ThaumSlime.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Thaumcraft.ThaumSlime.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "Thaumcraft.TravelingTrunk.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for Thaumcraft.TravelingTrunk";
              };
              "Thaumcraft.TravelingTrunk.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Thaumcraft.TravelingTrunk.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Thaumcraft.TravelingTrunk.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "Thaumcraft.Wisp.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for Thaumcraft.Wisp";
              };
              "Thaumcraft.Wisp.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Thaumcraft.Wisp.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Thaumcraft.Wisp.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "ThaumicExploration.TaintacleMinion.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for ThaumicExploration.TaintacleMinion";
              };
              "ThaumicExploration.TaintacleMinion.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "ThaumicExploration.TaintacleMinion.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "ThaumicExploration.TaintacleMinion.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "ThaumicHorizons.ChocolateCow.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for ThaumicHorizons.ChocolateCow";
              };
              "ThaumicHorizons.ChocolateCow.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "ThaumicHorizons.ChocolateCow.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "ThaumicHorizons.ChocolateCow.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "ThaumicHorizons.ChromaticSheep.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for ThaumicHorizons.ChromaticSheep";
              };
              "ThaumicHorizons.ChromaticSheep.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "ThaumicHorizons.ChromaticSheep.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "ThaumicHorizons.ChromaticSheep.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "ThaumicHorizons.Endersteed.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for ThaumicHorizons.Endersteed";
              };
              "ThaumicHorizons.Endersteed.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "ThaumicHorizons.Endersteed.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "ThaumicHorizons.Endersteed.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "ThaumicHorizons.Familiar.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for ThaumicHorizons.Familiar";
              };
              "ThaumicHorizons.Familiar.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "ThaumicHorizons.Familiar.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "ThaumicHorizons.Familiar.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "ThaumicHorizons.GoldChicken.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for ThaumicHorizons.GoldChicken";
              };
              "ThaumicHorizons.GoldChicken.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "ThaumicHorizons.GoldChicken.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "ThaumicHorizons.GoldChicken.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "ThaumicHorizons.GolemTH.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for ThaumicHorizons.GolemTH";
              };
              "ThaumicHorizons.GolemTH.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "ThaumicHorizons.GolemTH.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "ThaumicHorizons.GolemTH.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "ThaumicHorizons.Gravekeeper.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for ThaumicHorizons.Gravekeeper";
              };
              "ThaumicHorizons.Gravekeeper.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "ThaumicHorizons.Gravekeeper.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "ThaumicHorizons.Gravekeeper.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "ThaumicHorizons.GuardianPanther.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for ThaumicHorizons.GuardianPanther";
              };
              "ThaumicHorizons.GuardianPanther.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "ThaumicHorizons.GuardianPanther.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "ThaumicHorizons.GuardianPanther.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "ThaumicHorizons.HorseSkeleton.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for ThaumicHorizons.HorseSkeleton";
              };
              "ThaumicHorizons.HorseSkeleton.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "ThaumicHorizons.HorseSkeleton.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "ThaumicHorizons.HorseSkeleton.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "ThaumicHorizons.HorseZombie.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for ThaumicHorizons.HorseZombie";
              };
              "ThaumicHorizons.HorseZombie.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "ThaumicHorizons.HorseZombie.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "ThaumicHorizons.HorseZombie.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "ThaumicHorizons.LostSoul.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for ThaumicHorizons.LostSoul";
              };
              "ThaumicHorizons.LostSoul.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "ThaumicHorizons.LostSoul.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "ThaumicHorizons.LostSoul.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "ThaumicHorizons.LunarWolf.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for ThaumicHorizons.LunarWolf";
              };
              "ThaumicHorizons.LunarWolf.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "ThaumicHorizons.LunarWolf.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "ThaumicHorizons.LunarWolf.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "ThaumicHorizons.MeatSlime.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for ThaumicHorizons.MeatSlime";
              };
              "ThaumicHorizons.MeatSlime.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "ThaumicHorizons.MeatSlime.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "ThaumicHorizons.MeatSlime.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "ThaumicHorizons.MedSlime.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for ThaumicHorizons.MedSlime";
              };
              "ThaumicHorizons.MedSlime.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "ThaumicHorizons.MedSlime.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "ThaumicHorizons.MedSlime.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "ThaumicHorizons.MercurialSlime.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for ThaumicHorizons.MercurialSlime";
              };
              "ThaumicHorizons.MercurialSlime.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "ThaumicHorizons.MercurialSlime.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "ThaumicHorizons.MercurialSlime.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "ThaumicHorizons.NetherHound.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for ThaumicHorizons.NetherHound";
              };
              "ThaumicHorizons.NetherHound.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "ThaumicHorizons.NetherHound.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "ThaumicHorizons.NetherHound.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "ThaumicHorizons.NightmareTH.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for ThaumicHorizons.NightmareTH";
              };
              "ThaumicHorizons.NightmareTH.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "ThaumicHorizons.NightmareTH.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "ThaumicHorizons.NightmareTH.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "ThaumicHorizons.OrePig.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for ThaumicHorizons.OrePig";
              };
              "ThaumicHorizons.OrePig.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "ThaumicHorizons.OrePig.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "ThaumicHorizons.OrePig.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "ThaumicHorizons.ScholarChicken.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for ThaumicHorizons.ScholarChicken";
              };
              "ThaumicHorizons.ScholarChicken.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "ThaumicHorizons.ScholarChicken.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "ThaumicHorizons.ScholarChicken.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "ThaumicHorizons.Seawolf.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for ThaumicHorizons.Seawolf";
              };
              "ThaumicHorizons.Seawolf.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "ThaumicHorizons.Seawolf.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "ThaumicHorizons.Seawolf.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "ThaumicHorizons.SelfShearingSheep.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for ThaumicHorizons.SelfShearingSheep";
              };
              "ThaumicHorizons.SelfShearingSheep.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "ThaumicHorizons.SelfShearingSheep.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "ThaumicHorizons.SelfShearingSheep.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "ThaumicHorizons.Sheeder.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for ThaumicHorizons.Sheeder";
              };
              "ThaumicHorizons.Sheeder.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "ThaumicHorizons.Sheeder.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "ThaumicHorizons.Sheeder.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "ThaumicHorizons.TaintEaterPig.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for ThaumicHorizons.TaintEaterPig";
              };
              "ThaumicHorizons.TaintEaterPig.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "ThaumicHorizons.TaintEaterPig.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "ThaumicHorizons.TaintEaterPig.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "ThaumicHorizons.VoltSlime.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for ThaumicHorizons.VoltSlime";
              };
              "ThaumicHorizons.VoltSlime.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "ThaumicHorizons.VoltSlime.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "ThaumicHorizons.VoltSlime.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "TwilightForest.Adherent.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for TwilightForest.Adherent";
              };
              "TwilightForest.Adherent.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "TwilightForest.Adherent.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "TwilightForest.Adherent.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "TwilightForest.Armored Giant.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for TwilightForest.Armored Giant";
              };
              "TwilightForest.Armored Giant.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "TwilightForest.Armored Giant.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "TwilightForest.Armored Giant.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "TwilightForest.Bighorn Sheep.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for TwilightForest.Bighorn Sheep";
              };
              "TwilightForest.Bighorn Sheep.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "TwilightForest.Bighorn Sheep.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "TwilightForest.Bighorn Sheep.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "TwilightForest.Block&Chain Goblin.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for TwilightForest.Block&Chain Goblin";
              };
              "TwilightForest.Block&Chain Goblin.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "TwilightForest.Block&Chain Goblin.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "TwilightForest.Block&Chain Goblin.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "TwilightForest.Death Tome.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for TwilightForest.Death Tome";
              };
              "TwilightForest.Death Tome.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "TwilightForest.Death Tome.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "TwilightForest.Death Tome.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "TwilightForest.Fire Beetle.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for TwilightForest.Fire Beetle";
              };
              "TwilightForest.Fire Beetle.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "TwilightForest.Fire Beetle.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "TwilightForest.Fire Beetle.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "TwilightForest.Firefly.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for TwilightForest.Firefly";
              };
              "TwilightForest.Firefly.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "TwilightForest.Firefly.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "TwilightForest.Firefly.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "TwilightForest.Forest Bunny.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for TwilightForest.Forest Bunny";
              };
              "TwilightForest.Forest Bunny.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "TwilightForest.Forest Bunny.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "TwilightForest.Forest Bunny.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "TwilightForest.Forest Raven.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for TwilightForest.Forest Raven";
              };
              "TwilightForest.Forest Raven.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "TwilightForest.Forest Raven.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "TwilightForest.Forest Raven.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "TwilightForest.Forest Squirrel.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for TwilightForest.Forest Squirrel";
              };
              "TwilightForest.Forest Squirrel.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "TwilightForest.Forest Squirrel.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "TwilightForest.Forest Squirrel.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "TwilightForest.Giant Miner.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for TwilightForest.Giant Miner";
              };
              "TwilightForest.Giant Miner.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "TwilightForest.Giant Miner.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "TwilightForest.Giant Miner.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "TwilightForest.Glacier Penguin.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for TwilightForest.Glacier Penguin";
              };
              "TwilightForest.Glacier Penguin.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "TwilightForest.Glacier Penguin.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "TwilightForest.Glacier Penguin.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "TwilightForest.Harbinger Cube.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for TwilightForest.Harbinger Cube";
              };
              "TwilightForest.Harbinger Cube.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "TwilightForest.Harbinger Cube.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "TwilightForest.Harbinger Cube.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "TwilightForest.Hedge Spider.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for TwilightForest.Hedge Spider";
              };
              "TwilightForest.Hedge Spider.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "TwilightForest.Hedge Spider.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "TwilightForest.Hedge Spider.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "TwilightForest.Helmet Crab.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for TwilightForest.Helmet Crab";
              };
              "TwilightForest.Helmet Crab.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "TwilightForest.Helmet Crab.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "TwilightForest.Helmet Crab.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "TwilightForest.Hostile Wolf.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for TwilightForest.Hostile Wolf";
              };
              "TwilightForest.Hostile Wolf.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "TwilightForest.Hostile Wolf.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "TwilightForest.Hostile Wolf.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "TwilightForest.Hydra.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for TwilightForest.Hydra";
              };
              "TwilightForest.Hydra.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "TwilightForest.Hydra.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "TwilightForest.Hydra.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "TwilightForest.HydraHead.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for TwilightForest.HydraHead";
              };
              "TwilightForest.HydraHead.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "TwilightForest.HydraHead.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "TwilightForest.HydraHead.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "TwilightForest.Ice Crystal.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for TwilightForest.Ice Crystal";
              };
              "TwilightForest.Ice Crystal.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "TwilightForest.Ice Crystal.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "TwilightForest.Ice Crystal.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "TwilightForest.King Spider.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for TwilightForest.King Spider";
              };
              "TwilightForest.King Spider.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "TwilightForest.King Spider.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "TwilightForest.King Spider.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "TwilightForest.Knight Phantom.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for TwilightForest.Knight Phantom";
              };
              "TwilightForest.Knight Phantom.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "TwilightForest.Knight Phantom.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "TwilightForest.Knight Phantom.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "TwilightForest.Lich Minion.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for TwilightForest.Lich Minion";
              };
              "TwilightForest.Lich Minion.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "TwilightForest.Lich Minion.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "TwilightForest.Lich Minion.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "TwilightForest.Lower Goblin Knight.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for TwilightForest.Lower Goblin Knight";
              };
              "TwilightForest.Lower Goblin Knight.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "TwilightForest.Lower Goblin Knight.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "TwilightForest.Lower Goblin Knight.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "TwilightForest.Loyal Zombie.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for TwilightForest.Loyal Zombie";
              };
              "TwilightForest.Loyal Zombie.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "TwilightForest.Loyal Zombie.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "TwilightForest.Loyal Zombie.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "TwilightForest.Maze Slime.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for TwilightForest.Maze Slime";
              };
              "TwilightForest.Maze Slime.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "TwilightForest.Maze Slime.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "TwilightForest.Maze Slime.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "TwilightForest.Mini Ghast.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for TwilightForest.Mini Ghast";
              };
              "TwilightForest.Mini Ghast.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "TwilightForest.Mini Ghast.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "TwilightForest.Mini Ghast.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "TwilightForest.Minoshroom.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for TwilightForest.Minoshroom";
              };
              "TwilightForest.Minoshroom.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "TwilightForest.Minoshroom.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "TwilightForest.Minoshroom.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "TwilightForest.Minotaur.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for TwilightForest.Minotaur";
              };
              "TwilightForest.Minotaur.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "TwilightForest.Minotaur.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "TwilightForest.Minotaur.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "TwilightForest.Mist Wolf.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for TwilightForest.Mist Wolf";
              };
              "TwilightForest.Mist Wolf.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "TwilightForest.Mist Wolf.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "TwilightForest.Mist Wolf.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "TwilightForest.Mosquito Swarm.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for TwilightForest.Mosquito Swarm";
              };
              "TwilightForest.Mosquito Swarm.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "TwilightForest.Mosquito Swarm.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "TwilightForest.Mosquito Swarm.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "TwilightForest.Naga.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for TwilightForest.Naga";
              };
              "TwilightForest.Naga.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "TwilightForest.Naga.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "TwilightForest.Naga.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "TwilightForest.Pinch Beetle.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for TwilightForest.Pinch Beetle";
              };
              "TwilightForest.Pinch Beetle.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "TwilightForest.Pinch Beetle.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "TwilightForest.Pinch Beetle.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "TwilightForest.Questing Ram.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for TwilightForest.Questing Ram";
              };
              "TwilightForest.Questing Ram.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "TwilightForest.Questing Ram.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "TwilightForest.Questing Ram.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "TwilightForest.Redcap Sapper.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for TwilightForest.Redcap Sapper";
              };
              "TwilightForest.Redcap Sapper.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "TwilightForest.Redcap Sapper.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "TwilightForest.Redcap Sapper.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "TwilightForest.Redcap.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for TwilightForest.Redcap";
              };
              "TwilightForest.Redcap.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "TwilightForest.Redcap.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "TwilightForest.Redcap.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "TwilightForest.Redscale Broodling.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for TwilightForest.Redscale Broodling";
              };
              "TwilightForest.Redscale Broodling.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "TwilightForest.Redscale Broodling.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "TwilightForest.Redscale Broodling.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "TwilightForest.RovingCube.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for TwilightForest.RovingCube";
              };
              "TwilightForest.RovingCube.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "TwilightForest.RovingCube.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "TwilightForest.RovingCube.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "TwilightForest.Skeleton Druid.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for TwilightForest.Skeleton Druid";
              };
              "TwilightForest.Skeleton Druid.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "TwilightForest.Skeleton Druid.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "TwilightForest.Skeleton Druid.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "TwilightForest.Slime Beetle.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for TwilightForest.Slime Beetle";
              };
              "TwilightForest.Slime Beetle.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "TwilightForest.Slime Beetle.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "TwilightForest.Slime Beetle.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "TwilightForest.Snow Queen.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for TwilightForest.Snow Queen";
              };
              "TwilightForest.Snow Queen.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "TwilightForest.Snow Queen.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "TwilightForest.Snow Queen.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "TwilightForest.SnowGuardian.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for TwilightForest.SnowGuardian";
              };
              "TwilightForest.SnowGuardian.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "TwilightForest.SnowGuardian.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "TwilightForest.SnowGuardian.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "TwilightForest.Stable Ice Core.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for TwilightForest.Stable Ice Core";
              };
              "TwilightForest.Stable Ice Core.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "TwilightForest.Stable Ice Core.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "TwilightForest.Stable Ice Core.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "TwilightForest.Swarm Spider.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for TwilightForest.Swarm Spider";
              };
              "TwilightForest.Swarm Spider.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "TwilightForest.Swarm Spider.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "TwilightForest.Swarm Spider.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "TwilightForest.Tiny Bird.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for TwilightForest.Tiny Bird";
              };
              "TwilightForest.Tiny Bird.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "TwilightForest.Tiny Bird.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "TwilightForest.Tiny Bird.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "TwilightForest.Tower Boss.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for TwilightForest.Tower Boss";
              };
              "TwilightForest.Tower Boss.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "TwilightForest.Tower Boss.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "TwilightForest.Tower Boss.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "TwilightForest.Tower Ghast.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for TwilightForest.Tower Ghast";
              };
              "TwilightForest.Tower Ghast.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "TwilightForest.Tower Ghast.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "TwilightForest.Tower Ghast.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "TwilightForest.Tower Golem.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for TwilightForest.Tower Golem";
              };
              "TwilightForest.Tower Golem.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "TwilightForest.Tower Golem.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "TwilightForest.Tower Golem.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "TwilightForest.Tower Termite.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for TwilightForest.Tower Termite";
              };
              "TwilightForest.Tower Termite.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "TwilightForest.Tower Termite.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "TwilightForest.Tower Termite.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "TwilightForest.Troll.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for TwilightForest.Troll";
              };
              "TwilightForest.Troll.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "TwilightForest.Troll.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "TwilightForest.Troll.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "TwilightForest.Twilight Kobold.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for TwilightForest.Twilight Kobold";
              };
              "TwilightForest.Twilight Kobold.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "TwilightForest.Twilight Kobold.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "TwilightForest.Twilight Kobold.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "TwilightForest.Twilight Lich.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for TwilightForest.Twilight Lich";
              };
              "TwilightForest.Twilight Lich.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "TwilightForest.Twilight Lich.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "TwilightForest.Twilight Lich.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "TwilightForest.Twilight Wraith.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for TwilightForest.Twilight Wraith";
              };
              "TwilightForest.Twilight Wraith.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "TwilightForest.Twilight Wraith.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "TwilightForest.Twilight Wraith.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "TwilightForest.Unstable Ice Core.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for TwilightForest.Unstable Ice Core";
              };
              "TwilightForest.Unstable Ice Core.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "TwilightForest.Unstable Ice Core.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "TwilightForest.Unstable Ice Core.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "TwilightForest.Upper Goblin Knight.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for TwilightForest.Upper Goblin Knight";
              };
              "TwilightForest.Upper Goblin Knight.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "TwilightForest.Upper Goblin Knight.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "TwilightForest.Upper Goblin Knight.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "TwilightForest.Wild Boar.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for TwilightForest.Wild Boar";
              };
              "TwilightForest.Wild Boar.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "TwilightForest.Wild Boar.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "TwilightForest.Wild Boar.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "TwilightForest.Wild Deer.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for TwilightForest.Wild Deer";
              };
              "TwilightForest.Wild Deer.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "TwilightForest.Wild Deer.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "TwilightForest.Wild Deer.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "TwilightForest.WinterWolf.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for TwilightForest.WinterWolf";
              };
              "TwilightForest.WinterWolf.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "TwilightForest.WinterWolf.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "TwilightForest.WinterWolf.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "TwilightForest.Yeti Boss.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for TwilightForest.Yeti Boss";
              };
              "TwilightForest.Yeti Boss.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "TwilightForest.Yeti Boss.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "TwilightForest.Yeti Boss.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "TwilightForest.Yeti.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for TwilightForest.Yeti";
              };
              "TwilightForest.Yeti.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "TwilightForest.Yeti.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "TwilightForest.Yeti.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "Villager.item" = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:emerald";
                description = "Configuration of Shedding for Villager";
              };
              "Villager.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Villager.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Villager.rate" = lib.mkOption {
                type = lib.types.int;
                default = 226000;
              };
              "VillagerGolem.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for VillagerGolem";
              };
              "VillagerGolem.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "VillagerGolem.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "VillagerGolem.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "WarpTheory.creeperFake.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for WarpTheory.creeperFake";
              };
              "WarpTheory.creeperFake.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "WarpTheory.creeperFake.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "WarpTheory.creeperFake.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "WarpTheory.creeperPassive.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for WarpTheory.creeperPassive";
              };
              "WarpTheory.creeperPassive.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "WarpTheory.creeperPassive.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "WarpTheory.creeperPassive.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "WarpTheory.doppelganger.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for WarpTheory.doppelganger";
              };
              "WarpTheory.doppelganger.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "WarpTheory.doppelganger.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "WarpTheory.doppelganger.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "WarpTheory.phantom.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for WarpTheory.phantom";
              };
              "WarpTheory.phantom.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "WarpTheory.phantom.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "WarpTheory.phantom.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "WarpTheory.taintSheepSafe.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for WarpTheory.taintSheepSafe";
              };
              "WarpTheory.taintSheepSafe.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "WarpTheory.taintSheepSafe.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "WarpTheory.taintSheepSafe.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "Witch.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for Witch";
              };
              "Witch.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Witch.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Witch.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "WitherBoss.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for WitherBoss";
              };
              "WitherBoss.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "WitherBoss.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "WitherBoss.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "Wolf.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for Wolf";
              };
              "Wolf.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Wolf.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Wolf.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "Zombie.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for Zombie";
              };
              "Zombie.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "Zombie.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "Zombie.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "adventurebackpack.rideableSpider.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for adventurebackpack.rideableSpider";
              };
              "adventurebackpack.rideableSpider.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "adventurebackpack.rideableSpider.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "adventurebackpack.rideableSpider.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "alienBug.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for alienBug";
              };
              "alienBug.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "alienBug.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "alienBug.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "alienVillagerAR.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for alienVillagerAR";
              };
              "alienVillagerAR.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "alienVillagerAR.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "alienVillagerAR.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "chisel.snowman.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for chisel.snowman";
              };
              "chisel.snowman.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "chisel.snowman.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "chisel.snowman.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "computronics.swarm.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for computronics.swarm";
              };
              "computronics.swarm.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "computronics.swarm.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "computronics.swarm.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "enderzoo.ConcussionCreeper.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for enderzoo.ConcussionCreeper";
              };
              "enderzoo.ConcussionCreeper.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "enderzoo.ConcussionCreeper.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "enderzoo.ConcussionCreeper.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "enderzoo.DireSlime.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for enderzoo.DireSlime";
              };
              "enderzoo.DireSlime.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "enderzoo.DireSlime.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "enderzoo.DireSlime.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "enderzoo.DireWolf.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for enderzoo.DireWolf";
              };
              "enderzoo.DireWolf.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "enderzoo.DireWolf.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "enderzoo.DireWolf.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "enderzoo.Enderminy.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for enderzoo.Enderminy";
              };
              "enderzoo.Enderminy.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "enderzoo.Enderminy.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "enderzoo.Enderminy.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "enderzoo.FallenKnight.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for enderzoo.FallenKnight";
              };
              "enderzoo.FallenKnight.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "enderzoo.FallenKnight.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "enderzoo.FallenKnight.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "enderzoo.FallenMount.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for enderzoo.FallenMount";
              };
              "enderzoo.FallenMount.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "enderzoo.FallenMount.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "enderzoo.FallenMount.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "enderzoo.WitherCat.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for enderzoo.WitherCat";
              };
              "enderzoo.WitherCat.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "enderzoo.WitherCat.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "enderzoo.WitherCat.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "enderzoo.WitherWitch.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for enderzoo.WitherWitch";
              };
              "enderzoo.WitherWitch.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "enderzoo.WitherWitch.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "enderzoo.WitherWitch.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "etfuturum.brown_mooshroom.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for etfuturum.brown_mooshroom";
              };
              "etfuturum.brown_mooshroom.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "etfuturum.brown_mooshroom.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "etfuturum.brown_mooshroom.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "etfuturum.ender_dragon.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for etfuturum.ender_dragon";
              };
              "etfuturum.ender_dragon.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "etfuturum.ender_dragon.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "etfuturum.ender_dragon.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "etfuturum.endermite.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for etfuturum.endermite";
              };
              "etfuturum.endermite.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "etfuturum.endermite.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "etfuturum.endermite.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "etfuturum.fox.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for etfuturum.fox";
              };
              "etfuturum.fox.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "etfuturum.fox.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "etfuturum.fox.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "etfuturum.husk.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for etfuturum.husk";
              };
              "etfuturum.husk.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "etfuturum.husk.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "etfuturum.husk.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "etfuturum.rabbit.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for etfuturum.rabbit";
              };
              "etfuturum.rabbit.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "etfuturum.rabbit.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "etfuturum.rabbit.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "etfuturum.shulker.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for etfuturum.shulker";
              };
              "etfuturum.shulker.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "etfuturum.shulker.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "etfuturum.shulker.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "etfuturum.snow_golem.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for etfuturum.snow_golem";
              };
              "etfuturum.snow_golem.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "etfuturum.snow_golem.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "etfuturum.snow_golem.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "etfuturum.stray.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for etfuturum.stray";
              };
              "etfuturum.stray.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "etfuturum.stray.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "etfuturum.stray.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "etfuturum.villager_zombie.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for etfuturum.villager_zombie";
              };
              "etfuturum.villager_zombie.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "etfuturum.villager_zombie.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "etfuturum.villager_zombie.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "etfuturum.wooden_armorstand.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for etfuturum.wooden_armorstand";
              };
              "etfuturum.wooden_armorstand.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "etfuturum.wooden_armorstand.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "etfuturum.wooden_armorstand.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "miscutils.AusBoar.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
              };
              "miscutils.AusBoar.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "miscutils.AusBoar.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "miscutils.AusBoar.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "miscutils.AusDingo.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
              };
              "miscutils.AusDingo.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "miscutils.AusDingo.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "miscutils.AusDingo.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "miscutils.AusOctopus.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
              };
              "miscutils.AusOctopus.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "miscutils.AusOctopus.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "miscutils.AusOctopus.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "miscutils.AusSpider.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
              };
              "miscutils.AusSpider.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "miscutils.AusSpider.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "miscutils.AusSpider.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "miscutils.batKing.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
              };
              "miscutils.batKing.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "miscutils.batKing.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "miscutils.batKing.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "miscutils.bigChickenFriendly.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
              };
              "miscutils.bigChickenFriendly.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "miscutils.bigChickenFriendly.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "miscutils.bigChickenFriendly.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "miscutils.constructStaballoy.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for miscutils.constructStaballoy";
              };
              "miscutils.constructStaballoy.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "miscutils.constructStaballoy.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "miscutils.constructStaballoy.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "miscutils.sickBlaze.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for miscutils.sickBlaze";
              };
              "miscutils.sickBlaze.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "miscutils.sickBlaze.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "miscutils.sickBlaze.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "osirisBoss.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for osirisBoss";
              };
              "osirisBoss.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "osirisBoss.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "osirisBoss.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "porcodon.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for porcodon";
              };
              "porcodon.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "porcodon.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "porcodon.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "robotVillager.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for robotVillager";
              };
              "robotVillager.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "robotVillager.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "robotVillager.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "sentryRobot.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for sentryRobot";
              };
              "sentryRobot.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "sentryRobot.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "sentryRobot.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "witchery.attackbat.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for witchery.attackbat";
              };
              "witchery.attackbat.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "witchery.attackbat.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "witchery.attackbat.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "witchery.babayaga.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for witchery.babayaga";
              };
              "witchery.babayaga.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "witchery.babayaga.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "witchery.babayaga.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "witchery.banshee.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for witchery.banshee";
              };
              "witchery.banshee.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "witchery.banshee.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "witchery.banshee.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "witchery.cat.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for witchery.cat";
              };
              "witchery.cat.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "witchery.cat.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "witchery.cat.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "witchery.corpse.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for witchery.corpse";
              };
              "witchery.corpse.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "witchery.corpse.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "witchery.corpse.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "witchery.covenwitch.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for witchery.covenwitch";
              };
              "witchery.covenwitch.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "witchery.covenwitch.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "witchery.covenwitch.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "witchery.darkmark.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for witchery.darkmark";
              };
              "witchery.darkmark.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "witchery.darkmark.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "witchery.darkmark.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "witchery.death.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for witchery.death";
              };
              "witchery.death.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "witchery.death.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "witchery.death.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "witchery.deathhorse.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for witchery.deathhorse";
              };
              "witchery.deathhorse.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "witchery.deathhorse.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "witchery.deathhorse.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "witchery.demon.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for witchery.demon";
              };
              "witchery.demon.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "witchery.demon.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "witchery.demon.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "witchery.ent.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for witchery.ent";
              };
              "witchery.ent.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "witchery.ent.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "witchery.ent.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "witchery.eye.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for witchery.eye";
              };
              "witchery.eye.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "witchery.eye.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "witchery.eye.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "witchery.familiar.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for witchery.familiar";
              };
              "witchery.familiar.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "witchery.familiar.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "witchery.familiar.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "witchery.follower.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for witchery.follower";
              };
              "witchery.follower.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "witchery.follower.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "witchery.follower.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "witchery.goblin.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for witchery.goblin";
              };
              "witchery.goblin.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "witchery.goblin.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "witchery.goblin.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "witchery.goblingulg.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for witchery.goblingulg";
              };
              "witchery.goblingulg.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "witchery.goblingulg.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "witchery.goblingulg.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "witchery.goblinmog.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for witchery.goblinmog";
              };
              "witchery.goblinmog.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "witchery.goblinmog.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "witchery.goblinmog.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "witchery.hellhound.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for witchery.hellhound";
              };
              "witchery.hellhound.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "witchery.hellhound.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "witchery.hellhound.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "witchery.hornedHuntsman.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for witchery.hornedHuntsman";
              };
              "witchery.hornedHuntsman.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "witchery.hornedHuntsman.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "witchery.hornedHuntsman.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "witchery.illusionCreeper.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for witchery.illusionCreeper";
              };
              "witchery.illusionCreeper.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "witchery.illusionCreeper.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "witchery.illusionCreeper.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "witchery.illusionSpider.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for witchery.illusionSpider";
              };
              "witchery.illusionSpider.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "witchery.illusionSpider.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "witchery.illusionSpider.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "witchery.illusionZombie.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for witchery.illusionZombie";
              };
              "witchery.illusionZombie.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "witchery.illusionZombie.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "witchery.illusionZombie.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "witchery.imp.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for witchery.imp";
              };
              "witchery.imp.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "witchery.imp.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "witchery.imp.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "witchery.leonard.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for witchery.leonard";
              };
              "witchery.leonard.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "witchery.leonard.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "witchery.leonard.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "witchery.lilith.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for witchery.lilith";
              };
              "witchery.lilith.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "witchery.lilith.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "witchery.lilith.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "witchery.lordoftorment.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for witchery.lordoftorment";
              };
              "witchery.lordoftorment.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "witchery.lordoftorment.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "witchery.lordoftorment.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "witchery.lostsoul.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for witchery.lostsoul";
              };
              "witchery.lostsoul.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "witchery.lostsoul.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "witchery.lostsoul.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "witchery.louse.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for witchery.louse";
              };
              "witchery.louse.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "witchery.louse.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "witchery.louse.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "witchery.mandrake.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for witchery.mandrake";
              };
              "witchery.mandrake.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "witchery.mandrake.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "witchery.mandrake.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "witchery.mindrake.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for witchery.mindrake";
              };
              "witchery.mindrake.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "witchery.mindrake.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "witchery.mindrake.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "witchery.mirrorface.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for witchery.mirrorface";
              };
              "witchery.mirrorface.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "witchery.mirrorface.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "witchery.mirrorface.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "witchery.nightmare.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for witchery.nightmare";
              };
              "witchery.nightmare.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "witchery.nightmare.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "witchery.nightmare.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "witchery.owl.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for witchery.owl";
              };
              "witchery.owl.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "witchery.owl.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "witchery.owl.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "witchery.poltergeist.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for witchery.poltergeist";
              };
              "witchery.poltergeist.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "witchery.poltergeist.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "witchery.poltergeist.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "witchery.reflection.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for witchery.reflection";
              };
              "witchery.reflection.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "witchery.reflection.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "witchery.reflection.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "witchery.spectre.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for witchery.spectre";
              };
              "witchery.spectre.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "witchery.spectre.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "witchery.spectre.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "witchery.spirit.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for witchery.spirit";
              };
              "witchery.spirit.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "witchery.spirit.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "witchery.spirit.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "witchery.toad.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for witchery.toad";
              };
              "witchery.toad.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "witchery.toad.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "witchery.toad.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "witchery.treefyd.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for witchery.treefyd";
              };
              "witchery.treefyd.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "witchery.treefyd.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "witchery.treefyd.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "witchery.vampire.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for witchery.vampire";
              };
              "witchery.vampire.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "witchery.vampire.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "witchery.vampire.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "witchery.villageguard.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for witchery.villageguard";
              };
              "witchery.villageguard.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "witchery.villageguard.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "witchery.villageguard.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "witchery.werevillager.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for witchery.werevillager";
              };
              "witchery.werevillager.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "witchery.werevillager.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "witchery.werevillager.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "witchery.wingedmonkey.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for witchery.wingedmonkey";
              };
              "witchery.wingedmonkey.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "witchery.wingedmonkey.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "witchery.wingedmonkey.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "witchery.witchhunter.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for witchery.witchhunter";
              };
              "witchery.witchhunter.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "witchery.witchhunter.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "witchery.witchhunter.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
              "witchery.wolfman.item" = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Configuration of Shedding for witchery.wolfman";
              };
              "witchery.wolfman.lexiconDisplaySize" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "witchery.wolfman.metadata" = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
              "witchery.wolfman.rate" = lib.mkOption {
                type = lib.types.int;
                default = -1;
              };
            };
          };
        };
      };
    };
  };
}
