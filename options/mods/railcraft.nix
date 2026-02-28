{lib, ...}: {
  blocks = lib.mkOption {
    description = "blocks configuration (./config/railcraft/blocks.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
          type = lib.types.str;
          default = "./config/railcraft/blocks.cfg";
          readOnly = true;
        };
        kind = lib.mkOption {
          type = lib.types.str;
          default = "forge";
          readOnly = true;
        };
        blocks = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              anvil = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "brick.abyssal" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "brick.bleachedbone" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "brick.bloodstained" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "brick.frostbound" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "brick.infernal" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "brick.nether" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "brick.quarried" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "brick.sandy" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              cube = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              detector = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              elevator = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "firestone.recharge" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "fluid.creosote" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "fluid.steam" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              frame = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              glass = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              lamp = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.advtank" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.alpha" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.beta" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.delta" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.epsilon" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.gamma" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              ore = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              post = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "post.metal" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "post.metal.platform" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "residual.heat" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              signal = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              slab = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              stair = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              track = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "wall.alpha" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "wall.beta" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              worldlogic = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        subblocks = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "cube.brick.infernal" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "cube.brick.sandy" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "cube.coke" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "cube.concrete" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "cube.copper" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "cube.creosote" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "cube.crushed.obsidian" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "cube.lead" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "cube.steel" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "cube.stone.abyssal" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "cube.stone.quarried" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "cube.tin" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "lantern.metal.copper" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "lantern.metal.gold" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "lantern.metal.iron" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "lantern.metal.lead" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "lantern.metal.steel" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "lantern.metal.tin" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "lantern.stone.abyssal" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "lantern.stone.bleachedbone" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "lantern.stone.bloodstained" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "lantern.stone.frostbound" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "lantern.stone.infernal" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "lantern.stone.nether" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "lantern.stone.quarried" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "lantern.stone.sandstone" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "lantern.stone.sandy" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "lantern.stone.stone" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.alpha.anchor.admin" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.alpha.anchor.passive" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.alpha.anchor.personal" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.alpha.anchor.world" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.alpha.blast.furnace" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.alpha.coke.oven" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.alpha.feed.station" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.alpha.rock.crusher" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "machine.alpha.rolling.machine" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.alpha.smoker" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.alpha.steam.oven" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.alpha.steam.trap" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.alpha.steam.trap.auto" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.alpha.tank.water" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.alpha.trade.station" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.alpha.turbine" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.beta.anchor.sentinel" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.beta.boiler.firebox.liquid" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.beta.boiler.firebox.solid" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.beta.boiler.tank.pressure.high" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.beta.boiler.tank.pressure.low" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.beta.chest.metals" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.beta.chest.void" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.beta.engine.steam.high" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.beta.engine.steam.hobby" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.beta.engine.steam.low" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.beta.tank.iron.gauge" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.beta.tank.iron.valve" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.beta.tank.iron.wall" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.beta.tank.steel.gauge" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.beta.tank.steel.valve" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.beta.tank.steel.wall" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.delta.cage" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.delta.wire" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.epsilon.admin.steam.producer" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.epsilon.electric.feeder" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.epsilon.electric.feeder.admin" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.epsilon.engraving.bench" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.epsilon.flux.transformer" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.epsilon.force.track.emitter" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.eta.tank.iridium.gauge" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.eta.tank.iridium.valve" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.eta.tank.iridium.wall" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.eta.tank.neutronium.gauge" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.eta.tank.neutronium.valve" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.eta.tank.neutronium.wall" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.eta.tank.osmium.gauge" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.eta.tank.osmium.valve" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.eta.tank.osmium.wall" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.gamma.dispenser.cart" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.gamma.dispenser.train" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.gamma.loader.energy" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.gamma.loader.item" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.gamma.loader.item.advanced" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.gamma.loader.liquid" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.gamma.loader.rf" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.gamma.unloader.energy" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.gamma.unloader.item" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.gamma.unloader.item.advanced" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.gamma.unloader.liquid" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.gamma.unloader.rf" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.zeta.tank.aluminium.gauge" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.zeta.tank.aluminium.valve" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.zeta.tank.aluminium.wall" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.zeta.tank.palladium.gauge" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.zeta.tank.palladium.valve" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.zeta.tank.palladium.wall" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.zeta.tank.stainless.gauge" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.zeta.tank.stainless.valve" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.zeta.tank.stainless.wall" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.zeta.tank.titanium.gauge" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.zeta.tank.titanium.valve" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.zeta.tank.titanium.wall" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.zeta.tank.tungstensteel.gauge" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.zeta.tank.tungstensteel.valve" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "machine.zeta.tank.tungstensteel.wall" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "ore.dark.diamond" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "ore.dark.emerald" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "ore.dark.lapis" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "ore.firestone" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "ore.poor.copper" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "ore.poor.gold" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "ore.poor.iron" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "ore.poor.lead" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "ore.poor.tin" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "ore.saltpeter" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "ore.sulfur" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "signal.block.signal" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "signal.block.signal.dual" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "signal.box.analog" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "signal.box.block.relay" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "signal.box.capacitor" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "signal.box.controller" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "signal.box.interlock" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "signal.box.receiver" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "signal.box.sequencer" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "signal.distant" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "signal.distant.dual" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "signal.switch.lever" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "signal.switch.motor" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "signal.switch.routing" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "slab.abyssal.block" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "slab.abyssal.brick" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "slab.abyssal.cobble" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "slab.abyssal.fitted" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "slab.bleachedbone.block" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "slab.bleachedbone.brick" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "slab.bleachedbone.cobble" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "slab.bleachedbone.fitted" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "slab.bloodstained.block" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "slab.bloodstained.brick" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "slab.bloodstained.cobble" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "slab.bloodstained.fitted" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "slab.concrete" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "slab.copper" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "slab.creosote" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "slab.diamond" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "slab.frostbound.block" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "slab.frostbound.brick" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "slab.frostbound.cobble" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "slab.frostbound.fitted" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "slab.gold" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "slab.ice" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "slab.infernal.block" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "slab.infernal.brick" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "slab.infernal.cobble" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "slab.infernal.fitted" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "slab.iron" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "slab.lead" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "slab.nether.block" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "slab.nether.cobble" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "slab.nether.fitted" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "slab.obsidian" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "slab.packed.ice" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "slab.quarried.block" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "slab.quarried.brick" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "slab.quarried.cobble" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "slab.quarried.fitted" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "slab.sandy.block" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "slab.sandy.brick" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "slab.sandy.cobble" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "slab.sandy.fitted" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "slab.snow" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "slab.steel" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "slab.tin" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "stair.abyssal.block" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "stair.abyssal.brick" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "stair.abyssal.cobble" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "stair.abyssal.fitted" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "stair.bleachedbone.block" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "stair.bleachedbone.brick" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "stair.bleachedbone.cobble" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "stair.bleachedbone.fitted" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "stair.bloodstained.block" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "stair.bloodstained.brick" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "stair.bloodstained.cobble" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "stair.bloodstained.fitted" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "stair.concrete" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "stair.copper" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "stair.creosote" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "stair.diamond" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "stair.frostbound.block" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "stair.frostbound.brick" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "stair.frostbound.cobble" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "stair.frostbound.fitted" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "stair.gold" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "stair.ice" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "stair.infernal.block" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "stair.infernal.brick" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "stair.infernal.cobble" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "stair.infernal.fitted" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "stair.iron" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "stair.lead" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "stair.nether.block" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "stair.nether.cobble" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "stair.nether.fitted" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "stair.obsidian" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "stair.packed.ice" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "stair.quarried.block" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "stair.quarried.brick" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "stair.quarried.cobble" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "stair.quarried.fitted" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "stair.sandy.block" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "stair.sandy.brick" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "stair.sandy.cobble" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "stair.sandy.fitted" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "stair.snow" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "stair.steel" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "stair.tin" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "track.boarding" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "track.boarding.train" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "track.buffer.stop" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "track.control" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "track.coupler" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "track.decoupler" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "track.detector.direction" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "track.disembarking" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "track.disposal" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "track.electric" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "track.electric.junction" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "track.electric.switch" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "track.electric.wye" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "track.embarking" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "track.force" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "track.gated" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "track.gated.oneway" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "track.holding" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "track.holding.train" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "track.junction" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "track.launcher" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "track.limiter" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "track.lockdown" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "track.lockdown.train" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "track.locking" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "track.locomotive" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "track.oneway" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "track.priming" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "track.reinforced" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "track.reinforced.boost" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "track.reinforced.junction" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "track.reinforced.switch" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "track.reinforced.wye" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "track.routing" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "track.slow" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "track.slow.boost" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "track.slow.junction" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "track.slow.switch" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "track.slow.wye" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "track.speed" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "track.speed.boost" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "track.speed.switch" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "track.speed.transition" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "track.speed.wye" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "track.suspended" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "track.switch" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "track.whistle" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "track.wye" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "wall.abyssal.brick" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "wall.bleachedbone.brick" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "wall.bloodstained.brick" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "wall.brick" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "wall.concrete" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "wall.diamond" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "wall.frost.bound.brick" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "wall.gold" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "wall.ice" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "wall.infernal.brick" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "wall.iron" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "wall.nether.brick" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "wall.obsidian" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "wall.quarried.brick" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "wall.quartz" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "wall.quartz.chiseled" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "wall.sandstone" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "wall.sandstone.chiseled" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "wall.sandstone.smooth" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "wall.sandy.brick" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "wall.snow" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "wall.stone.brick" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "wall.stone.brick.chiseled" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "wall.stone.brick.cracked" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "wall.stone.brick.mossy" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
      };
    };
  };
  items = lib.mkOption {
    description = "items configuration (./config/railcraft/items.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
          type = lib.types.str;
          default = "./config/railcraft/items.cfg";
          readOnly = true;
        };
        kind = lib.mkOption {
          type = lib.types.str;
          default = "forge";
          readOnly = true;
        };
        items = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "armor.goggles" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "armor.overalls" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "armor.steel.boots" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "armor.steel.helmet" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "armor.steel.legs" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "armor.steel.plate" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "backpack.apothecary.t1" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "backpack.apothecary.t2" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "backpack.iceman.t1" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "backpack.iceman.t2" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "backpack.trackman.t1" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "backpack.trackman.t2" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "cart.anchor" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "cart.anchor.admin" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "cart.anchor.personal" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "cart.bore" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "cart.energy.batbox" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "cart.energy.cesu" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "cart.energy.mfe" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "cart.energy.mfsu" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "cart.gift" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "cart.loco.steam.solid" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "cart.pumpkin" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "cart.tank" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "cart.tnt" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "cart.tnt.wood" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "cart.track.relayer" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "cart.undercutter" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "cart.work" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              dust = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              emblem = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "firestone.cracked" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "firestone.cut" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "firestone.raw" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "firestone.refined" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "fluid.creosote.bottle" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "fluid.creosote.bucket" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "fluid.creosote.can" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "fluid.creosote.cell" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "fluid.creosote.refactory" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "fluid.creosote.wax" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "fluid.steam.bottle" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "fuel.coke" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "ic2.upgrade.lapotron" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              ingot = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              nugget = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "part.circuit" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "part.gear" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "part.plate" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "part.rail" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "part.railbed" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "part.rebar" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "part.signal.lamp" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "part.tie" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "part.turbine.blade" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "part.turbine.disk" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "part.turbine.rotor" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "routing.table" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "routing.ticket" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "routing.ticket.gold" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "tool.bore.head.diamond" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "tool.bore.head.iron" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "tool.bore.head.steel" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "tool.crowbar" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "tool.crowbar.magic" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "tool.crowbar.reinforced" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "tool.crowbar.void" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "tool.electric.meter" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "tool.magnifying.glass" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "tool.notepad" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "tool.signal.label" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "tool.signal.tuner" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "tool.steel.axe" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "tool.steel.hoe" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "tool.steel.pickaxe" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "tool.steel.shears" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "tool.steel.shovel" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "tool.steel.sword" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "tool.surveyor" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "tool.whistle.tuner" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
      };
    };
  };
  modules = lib.mkOption {
    description = "modules configuration (./config/railcraft/modules.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
          type = lib.types.str;
          default = "./config/railcraft/modules.cfg";
          readOnly = true;
        };
        kind = lib.mkOption {
          type = lib.types.str;
          default = "forge";
          readOnly = true;
        };
        modules = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              advtanks = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              automation = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "chunk.loading" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              electricity = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              emblem = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              extras = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              factory = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              forestry = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              gregtech = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              ic2 = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              locomotives = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              magic = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "redstone.flux" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              routing = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              seasonal = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              signals = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              steam = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              structures = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              thaumcraft = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              tracks = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "tracks.electric" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "tracks.highspeed" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "tracks.reinforced" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "tracks.wood" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              train = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              transport = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              world = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
      };
    };
  };
  railcraft = lib.mkOption {
    description = "railcraft configuration (./config/railcraft/railcraft.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
          type = lib.types.str;
          default = "./config/railcraft/railcraft.cfg";
          readOnly = true;
        };
        kind = lib.mkOption {
          type = lib.types.str;
          default = "forge";
          readOnly = true;
        };
        anchors = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              craftable = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "delete.anchors" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "interact.with.pipes" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "passive.craftable" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "passive.fuel" = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:ender_pearl=1, dreamcraft:item.CoinChunkloaderTierI=24, dreamcraft:item.CoinChunkloaderTierII=48, dreamcraft:item.CoinChunkloaderTierIII=96, dreamcraft:item.CoinChunkloaderTierIV=192, dreamcraft:item.CoinChunkloaderTierV=384";
              };
              "personal.craftable" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "personal.fuel" = lib.mkOption {
                type = lib.types.str;
                default = "EnderZoo:enderFragment=1, minecraft:ender_pearl=4, dreamcraft:item.CoinChunkloaderTierI=48, dreamcraft:item.CoinChunkloaderTierII=96, dreamcraft:item.CoinChunkloaderTierIII=192,dreamcraft:item.CoinChunkloaderTierIV=364, dreamcraft:item.CoinChunkloaderTierV=768";
              };
              "print.debug" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "print.locations" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "world.fuel" = lib.mkOption {
                type = lib.types.str;
                default = "dreamcraft:item.CoinChunkloaderTierI=12, dreamcraft:item.CoinChunkloaderTierII=24, dreamcraft:item.CoinChunkloaderTierIII=48, dreamcraft:item.CoinChunkloaderTierIV=96, dreamcraft:item.CoinChunkloaderTierV=192";
              };
            };
          };
        };
        carts = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "cart.anchor" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "cart.anchor.admin" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "cart.anchor.personal" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "cart.bore" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "cart.cargo" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "cart.energy.batbox" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "cart.energy.cesu" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "cart.energy.mfe" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "cart.energy.mfsu" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "cart.gift" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "cart.loco.creative" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "cart.loco.electric" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "cart.loco.steam.solid" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "cart.pumpkin" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "cart.redstone.flux" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "cart.tank" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "cart.tnt" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "cart.tnt.wood" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "cart.track.layer" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "cart.track.relayer" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "cart.track.remover" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "cart.undercutter" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "cart.work" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        enchantments = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              ench_destruction = lib.mkOption {
                type = lib.types.int;
                default = 192;
              };
              ench_implosion = lib.mkOption {
                type = lib.types.int;
                default = 191;
              };
              ench_wrecking = lib.mkOption {
                type = lib.types.int;
                default = 190;
              };
            };
          };
        };
        fluids = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              creosote = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              steam = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        general = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              cannotMobsSpawnOnDecorBlocks = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              cannotMobsSpawnOnMechanism = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "check.version.online" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "play.sounds" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        loot = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "armor.goggles" = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              "armor.overalls" = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              "armor.steel.boots" = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              "armor.steel.helmet" = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              "armor.steel.legs" = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              "armor.steel.plate" = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              "cart.basic" = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              "cart.chest" = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              "cart.hopper" = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              "cart.tnt" = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              "cart.tnt.wood" = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              "cart.work" = lib.mkOption {
                type = lib.types.int;
                default = 8;
              };
              "creosote.bottle" = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              "fuel.coal" = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              "fuel.coke" = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              "gear.bushing" = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              "rail.part" = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              "steel.block" = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              "steel.ingot" = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              "tie.stone" = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              "tie.wood" = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              "tool.crowbar" = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              "tool.electric.meter" = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              "tool.magnifying.glass" = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              "tool.signal.tuner" = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              "tool.steel.axe" = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              "tool.steel.pickaxe" = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              "tool.steel.shears" = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              "tool.steel.shovel" = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              "tool.steel.sword" = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              "tool.surveyor" = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              "track.basic" = lib.mkOption {
                type = lib.types.int;
                default = 30;
              };
            };
          };
        };
        recipes = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              minecraft = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    furnace = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          creosote = lib.mkOption {
                            type = lib.types.bool;
                            default = false;
                          };
                        };
                      };
                    };
                  };
                };
              };
              railcraft = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    track = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          useAltRecipes = lib.mkOption {
                            type = lib.types.bool;
                            default = false;
                          };
                        };
                      };
                    };
                    rockcrusher = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          ores = lib.mkOption {
                            type = lib.types.bool;
                            default = true;
                          };
                        };
                      };
                    };
                    misc = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "coalcoke.torches" = lib.mkOption {
                            type = lib.types.int;
                            default = 8;
                          };
                          "creosote.torches" = lib.mkOption {
                            type = lib.types.int;
                            default = 2;
                          };
                          gunpowder = lib.mkOption {
                            type = lib.types.bool;
                            default = true;
                          };
                        };
                      };
                    };
                    cart = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          bronze = lib.mkOption {
                            type = lib.types.bool;
                            default = true;
                          };
                          furnace = lib.mkOption {
                            type = lib.types.bool;
                            default = false;
                          };
                          steel = lib.mkOption {
                            type = lib.types.bool;
                            default = true;
                          };
                        };
                      };
                    };
                  };
                };
              };
              ic2 = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    macerator = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          blaze = lib.mkOption {
                            type = lib.types.bool;
                            default = true;
                          };
                          bones = lib.mkOption {
                            type = lib.types.bool;
                            default = true;
                          };
                          charcoal = lib.mkOption {
                            type = lib.types.bool;
                            default = true;
                          };
                          cobble = lib.mkOption {
                            type = lib.types.bool;
                            default = true;
                          };
                          dirt = lib.mkOption {
                            type = lib.types.bool;
                            default = true;
                          };
                          obsidian = lib.mkOption {
                            type = lib.types.bool;
                            default = false;
                          };
                          ores = lib.mkOption {
                            type = lib.types.bool;
                            default = true;
                          };
                        };
                      };
                    };
                  };
                };
              };
              forestry = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    misc = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          fertilizer = lib.mkOption {
                            type = lib.types.bool;
                            default = true;
                          };
                        };
                      };
                    };
                    carpenter = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "creosote.block" = lib.mkOption {
                            type = lib.types.bool;
                            default = true;
                          };
                          ties = lib.mkOption {
                            type = lib.types.bool;
                            default = true;
                          };
                          torches = lib.mkOption {
                            type = lib.types.bool;
                            default = true;
                          };
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        };
        tweaks = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              blocks = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    cartdispenser = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          delay = lib.mkOption {
                            type = lib.types.int;
                            default = 0;
                          };
                        };
                      };
                    };
                    irontank = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "allow.stacking" = lib.mkOption {
                            type = lib.types.bool;
                            default = true;
                          };
                          maxsize = lib.mkOption {
                            type = lib.types.int;
                            default = 9;
                          };
                        };
                      };
                    };
                    signals = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          printDebug = lib.mkOption {
                            type = lib.types.bool;
                            default = false;
                          };
                          "update.interval" = lib.mkOption {
                            type = lib.types.int;
                            default = 4;
                          };
                        };
                      };
                    };
                    machines = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          requirePower = lib.mkOption {
                            type = lib.types.bool;
                            default = true;
                          };
                        };
                      };
                    };
                    boiler = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          biofuelMultiplier = lib.mkOption {
                            type = lib.types.float;
                            default = 1.0;
                          };
                          fuelMultiplier = lib.mkOption {
                            type = lib.types.float;
                            default = 1.0;
                          };
                        };
                      };
                    };
                  };
                };
              };
              steam = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    fuelPerSteamMultiplier = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                  };
                };
              };
              items = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    goggles = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          trackingAura = lib.mkOption {
                            type = lib.types.bool;
                            default = true;
                          };
                        };
                      };
                    };
                    firestone = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          firestoneIgnitesBlocks = lib.mkOption {
                            type = lib.types.bool;
                            default = true;
                          };
                        };
                      };
                    };
                  };
                };
              };
              tracks = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    speed = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "entities.excluded" = lib.mkOption {
                            type = lib.types.listOf lib.types.str;
                            default = [];
                          };
                          "max.speed" = lib.mkOption {
                            type = lib.types.float;
                            default = 0.800000011920929;
                          };
                        };
                      };
                    };
                    launch = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          "force.max" = lib.mkOption {
                            type = lib.types.int;
                            default = 50;
                          };
                        };
                      };
                    };
                  };
                };
              };
              routing = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    "ops.only" = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                    };
                  };
                };
              };
              carts = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    general = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          breakOnDrop = lib.mkOption {
                            type = lib.types.bool;
                            default = false;
                          };
                          collideWithItems = lib.mkOption {
                            type = lib.types.bool;
                            default = false;
                          };
                          maxStackSize = lib.mkOption {
                            type = lib.types.int;
                            default = 3;
                          };
                          printLinkingDebug = lib.mkOption {
                            type = lib.types.bool;
                            default = false;
                          };
                          "register.collision.handler" = lib.mkOption {
                            type = lib.types.bool;
                            default = true;
                          };
                          "solid.carts" = lib.mkOption {
                            type = lib.types.bool;
                            default = true;
                          };
                        };
                      };
                    };
                    basic = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          adjustDrag = lib.mkOption {
                            type = lib.types.bool;
                            default = true;
                          };
                        };
                      };
                    };
                    chest = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          allowLiquids = lib.mkOption {
                            type = lib.types.bool;
                            default = false;
                          };
                        };
                      };
                    };
                    bore = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          destroyBlocks = lib.mkOption {
                            type = lib.types.bool;
                            default = false;
                          };
                          mineAllBlocks = lib.mkOption {
                            type = lib.types.bool;
                            default = true;
                          };
                          mineableBlocks = lib.mkOption {
                            type = lib.types.str;
                            default = "{}";
                          };
                          miningSpeed = lib.mkOption {
                            type = lib.types.float;
                            default = 1.0;
                          };
                        };
                      };
                    };
                    locomotive = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          damageMobs = lib.mkOption {
                            type = lib.types.bool;
                            default = true;
                          };
                          horsepower = lib.mkOption {
                            type = lib.types.int;
                            default = 15;
                          };
                          steam = lib.mkOption {
                            default = {};
                            type = lib.types.submodule {
                              options = {
                                efficiencyMulitplier = lib.mkOption {
                                  type = lib.types.float;
                                  default = 3.0;
                                };
                              };
                            };
                          };
                        };
                      };
                    };
                    tank = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          capacity = lib.mkOption {
                            type = lib.types.int;
                            default = 32;
                          };
                          fillrate = lib.mkOption {
                            type = lib.types.int;
                            default = 32;
                          };
                          useCustomValues = lib.mkOption {
                            type = lib.types.bool;
                            default = false;
                          };
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        };
        worldgen = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              generate = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    abyssal = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    copper = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                    };
                    firestone = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    gold = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                    };
                    iron = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                    };
                    lead = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                    };
                    quarried = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    saltpeter = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                    };
                    sulfur = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                    };
                    tin = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                    };
                    workshop = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                  };
                };
              };
              id = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    workshop = lib.mkOption {
                      type = lib.types.int;
                      default = 456;
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
}
