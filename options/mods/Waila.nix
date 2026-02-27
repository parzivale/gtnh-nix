{lib, ...}: {
  Waila = lib.mkOption {
    description = "Waila configuration (./config/Waila.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/Waila.cfg";
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
              "waila.cfg.alpha" = lib.mkOption {
                type = lib.types.int;
                default = 80;
              };
              "waila.cfg.bgcolor" = lib.mkOption {
                type = lib.types.int;
                default = 3357055;
              };
              "waila.cfg.fontcolor" = lib.mkOption {
                type = lib.types.int;
                default = 10526880;
              };
              "waila.cfg.gradient1" = lib.mkOption {
                type = lib.types.int;
                default = 4409791;
              };
              "waila.cfg.gradient2" = lib.mkOption {
                type = lib.types.int;
                default = 4409791;
              };
              "waila.cfg.heartsperline" = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              "waila.cfg.keybind" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "waila.cfg.liquid" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "waila.cfg.maxhpbeforetext" = lib.mkOption {
                type = lib.types.int;
                default = 40;
              };
              "waila.cfg.metadata" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "waila.cfg.newfilters" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "waila.cfg.posx" = lib.mkOption {
                type = lib.types.int;
                default = 10000;
              };
              "waila.cfg.posy" = lib.mkOption {
                type = lib.types.int;
                default = 10000;
              };
              "waila.cfg.scale" = lib.mkOption {
                type = lib.types.int;
                default = 100;
              };
              "waila.cfg.shiftblock" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "waila.cfg.shiftents" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "waila.cfg.show" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "waila.cfg.showmode" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "waila.cfg.showicon" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
            };
          };
        };
        modules = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Blood Magic" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Blood Magic:altar" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Blood Magic:chemistrySet" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Blood Magic:masterStone" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Blood Magic:teleposer" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              DSU = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Extra Utilities" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Forestry = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Forestry:apiary" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Forestry:heat" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Forestry:leaves" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Forestry:power" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Forestry:sapling" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "HQM.showQDS" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              IC2Crops = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "IC2Crops:cropName" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "IC2Crops:cropStats" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "IC2Crops:envInfo" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "IC2Crops:plantInfo" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              IFluidHandler = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Pam's Fruit" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Railcraft = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Railcraft:charge" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Railcraft:energy" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Railcraft:engines" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Railcraft:heat" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Railcraft:locomotives" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Railcraft:multiblocks" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Railcraft:tanks" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Railcraft:waterTankRate" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "bb.itemnumb" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "bb.itemtype" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "bb.space" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "bc.tankamount" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "bc.tanktype" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "bloodarsenal.showExtendedAltarTooltip" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "bm.bloodAltar" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "bm.chemistrySet" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "bm.ritualController" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "bm.teleposer" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "computronics.enableDriveState" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "computronics.enableLampColor" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "computronics.enableOCAddress" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "computronics.enableRelayBound" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "computronics.enableTape" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "computronics.enableTapeName" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "enderstorage.colors" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "extrautilities.fluidamount" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "facades.hidden" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "general.showcrop" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "general.showents" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "general.showhp" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "harvestability.currentlyharvestable" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "harvestability.currentlyharvestable.sneakingonly" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "harvestability.effectivetool" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "harvestability.effectivetool.sneakingonly" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "harvestability.harvestlevel" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "harvestability.harvestlevel.sneakingonly" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "harvestability.harvestlevelnum" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "harvestability.harvestlevelnum.sneakingonly" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "harvestability.minimal" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "harvestability.oresonly" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "harvestability.shearability" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "harvestability.shearability.sneakingonly" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "harvestability.silktouchability" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "harvestability.silktouchability.sneakingonly" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "harvestability.toolrequiredonly" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "harvestability.unharvestableonly" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "ic2.outputeu" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "ic2.storage" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "oc.address" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "oc.componentName" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "oc.energy" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "openblocks.fluidamount" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "pr.showdata" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "pr.showio" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "pr.showsignal" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "railcraft.fluidamount" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "tcon.basin" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "tcon.castingchannel" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "tcon.searedtank" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "tcon.smeltery" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "tcon.table" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "thaumcraft.aspects" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "thermalexpansion.energyhandler" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "thermalexpansion.fluidamount" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "thermalexpansion.owner" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "vanilla.comparator" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "vanilla.jukebox" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "vanilla.leverstate" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "vanilla.redstone" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "vanilla.repeater" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "vanilla.show_invisible_players" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "vanilla.silverfish" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "vanilla.spawntype" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "wawla.beacon.showLevels" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "wawla.beacon.showPrimary" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "wawla.beacon.showSecondary" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "wawla.bed.sleepable" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "wawla.furnace.burntime" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "wawla.furnace.fuel" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "wawla.furnace.input" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "wawla.furnace.output" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "wawla.harvest.showHarvest" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "wawla.harvest.showProgress" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "wawla.harvest.showTier" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "wawla.harvest.showTool" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "wawla.horse.showJump" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "wawla.horse.showSpeed" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "wawla.info.showHardness" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "wawla.info.showResistance" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "wawla.light.lightLevel" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "wawla.light.monsterSpawn" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "wawla.light.showDay" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "wawla.pets.age" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "wawla.pets.cooldown" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "wawla.pets.showOwner" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "wawla.pets.sitting" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "wawla.showEquipment" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "wawla.showHead" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "wawla.showMobArmor" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "wawla.showProfession" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "wawla.thaumcraft.deconAspect" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "wawla.thaumcraft.jarAmount" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "wawla.thaumcraft.jarAspect" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "wawla.thaumcraft.jarEXP" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "wawla.thaumcraft.mirrorDim" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "wawla.thaumcraft.mirrorLink" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "wawla.thaumcraft.pedestalItem" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "wawla.thaumcraft.wandCharge" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "wawla.thaumcraft.wandItem" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "wawla.tinkers.hideLandmine" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "wawla.tinkers.showDryerItem" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "wawla.tinkers.showDryerTime" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "wawla.tinkers.showFurnace" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "wawla.tnt.fuse" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        server_forcing = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Blood Magic" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Blood Magic:altar" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Blood Magic:chemistrySet" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Blood Magic:masterStone" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Blood Magic:teleposer" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              DSU = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Extra Utilities" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Forestry = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Forestry:apiary" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Forestry:heat" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Forestry:leaves" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Forestry:power" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Forestry:sapling" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "HQM.showQDS" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              IC2Crops = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "IC2Crops:cropName" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "IC2Crops:cropStats" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "IC2Crops:envInfo" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "IC2Crops:plantInfo" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              IFluidHandler = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Pam's Fruit" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Railcraft = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Railcraft:charge" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Railcraft:energy" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Railcraft:engines" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Railcraft:heat" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Railcraft:locomotives" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Railcraft:multiblocks" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Railcraft:tanks" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Railcraft:waterTankRate" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "bb.itemnumb" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "bb.itemtype" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "bb.space" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "bc.tankamount" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "bc.tanktype" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "bloodarsenal.showExtendedAltarTooltip" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "bm.bloodAltar" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "bm.chemistrySet" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "bm.ritualController" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "bm.teleposer" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "computronics.enableDriveState" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "computronics.enableLampColor" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "computronics.enableOCAddress" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "computronics.enableRelayBound" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "computronics.enableTape" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "computronics.enableTapeName" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "enderstorage.colors" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "extrautilities.fluidamount" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "facades.hidden" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "general.showcrop" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "general.showents" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "general.showhp" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "harvestability.currentlyharvestable" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "harvestability.currentlyharvestable.sneakingonly" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "harvestability.effectivetool" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "harvestability.effectivetool.sneakingonly" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "harvestability.harvestlevel" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "harvestability.harvestlevel.sneakingonly" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "harvestability.harvestlevelnum" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "harvestability.harvestlevelnum.sneakingonly" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "harvestability.minimal" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "harvestability.oresonly" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "harvestability.shearability" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "harvestability.shearability.sneakingonly" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "harvestability.silktouchability" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "harvestability.silktouchability.sneakingonly" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "harvestability.toolrequiredonly" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "harvestability.unharvestableonly" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "ic2.outputeu" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "ic2.storage" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "oc.address" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "oc.componentName" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "oc.energy" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "openblocks.fluidamount" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "pr.showdata" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "pr.showio" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "pr.showsignal" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "railcraft.fluidamount" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "tcon.basin" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "tcon.castingchannel" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "tcon.searedtank" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "tcon.smeltery" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "tcon.table" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "thaumcraft.aspects" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "thermalexpansion.energyhandler" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "thermalexpansion.owner" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "vanilla.comparator" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "vanilla.jukebox" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "vanilla.leverstate" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "vanilla.redstone" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "vanilla.repeater" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "vanilla.show_invisible_players" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "vanilla.silverfish" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "vanilla.spawntype" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "wawla.beacon.showLevels" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "wawla.beacon.showPrimary" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "wawla.beacon.showSecondary" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "wawla.bed.sleepable" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "wawla.furnace.burntime" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "wawla.furnace.fuel" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "wawla.furnace.input" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "wawla.furnace.output" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "wawla.harvest.showHarvest" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "wawla.harvest.showProgress" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "wawla.harvest.showTier" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "wawla.harvest.showTool" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "wawla.horse.showJump" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "wawla.horse.showSpeed" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "wawla.info.showHardness" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "wawla.info.showResistance" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "wawla.light.lightLevel" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "wawla.light.monsterSpawn" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "wawla.light.showDay" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "wawla.pets.age" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "wawla.pets.cooldown" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "wawla.pets.showOwner" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "wawla.pets.sitting" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "wawla.showEquipment" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "wawla.showHead" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "wawla.showMobArmor" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "wawla.showProfession" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "wawla.thaumcraft.deconAspect" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "wawla.thaumcraft.jarAmount" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "wawla.thaumcraft.jarAspect" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "wawla.thaumcraft.jarEXP" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "wawla.thaumcraft.mirrorDim" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "wawla.thaumcraft.mirrorLink" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "wawla.thaumcraft.pedestalItem" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "wawla.thaumcraft.wandCharge" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "wawla.thaumcraft.wandItem" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "wawla.tinkers.hideLandmine" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "wawla.tinkers.showDryerItem" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "wawla.tinkers.showDryerTime" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "wawla.tinkers.showFurnace" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "wawla.tnt.fuse" = lib.mkOption {
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
