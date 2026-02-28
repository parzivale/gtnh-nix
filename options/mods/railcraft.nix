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
                description = "change to craftable=false to disable World Anchor crafting, they will still be available via Creative";
              };
              "delete.anchors" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "change to 'delete.anchors=true' to delete every World Anchor or Anchor Cart in the world. Value resets to false after each session. To disable Anchors completely, disable the ChunkLoading Module from 'modules.cfg'";
              };
              "interact.with.pipes" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "change to interact.with.pipes=false to prevent pipes, tubes, or various other things from interacting with Anchors";
              };
              "passive.craftable" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "change to passive.craftable=false to disable Passive Anchor crafting, they will still be available via Creative";
              };
              "passive.fuel" = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:ender_pearl=1, dreamcraft:item.CoinChunkloaderTierI=24, dreamcraft:item.CoinChunkloaderTierII=48, dreamcraft:item.CoinChunkloaderTierIII=96, dreamcraft:item.CoinChunkloaderTierIV=192, dreamcraft:item.CoinChunkloaderTierV=384";
                description = "the number of hours that an item will power a Passive Anchor this is an approximation only, actual duration is affected by number of chunks loaded and tick rate if the list is empty, Passive Anchors will not require fuel, default = 12 Entry Format: <modid>:<itemname>#<metadata>=<value> Example: personal.fuel= minecraft:ender_pearl=12, minecraft:coal#0=4";
              };
              "personal.craftable" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "change to personal.craftable=false to disable Personal Anchor crafting, they will still be available via Creative";
              };
              "personal.fuel" = lib.mkOption {
                type = lib.types.str;
                default = "EnderZoo:enderFragment=1, minecraft:ender_pearl=4, dreamcraft:item.CoinChunkloaderTierI=48, dreamcraft:item.CoinChunkloaderTierII=96, dreamcraft:item.CoinChunkloaderTierIII=192,dreamcraft:item.CoinChunkloaderTierIV=364, dreamcraft:item.CoinChunkloaderTierV=768";
                description = "the number of hours that an item will power a Personal Anchor or Personal Anchor Cart this is an approximation only, actual duration is affected by number of chunks loaded and tick rate if the list is empty, Personal Anchors will not require fuel, default = 12 Entry Format: <modid>:<itemname>#<metadata>=<value> Example: personal.fuel= minecraft:ender_pearl=12, minecraft:coal#0=4";
              };
              "print.debug" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "change to 'print.debug=true' to log debug info for Anchors";
              };
              "print.locations" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "change to print.locations=true to print Anchor locations to the log on startup";
              };
              "world.fuel" = lib.mkOption {
                type = lib.types.str;
                default = "dreamcraft:item.CoinChunkloaderTierI=12, dreamcraft:item.CoinChunkloaderTierII=24, dreamcraft:item.CoinChunkloaderTierIII=48, dreamcraft:item.CoinChunkloaderTierIV=96, dreamcraft:item.CoinChunkloaderTierV=192";
                description = "the number of hours that an item will power a World Anchor or World Anchor Cart this is an approximation only, actual duration is affected by number of chunks loaded and tick rate if the list is empty, World Anchors will not require fuel, default = 12 Entry Format: <modid>:<itemname>#<metadata>=<value> Example: personal.fuel= minecraft:ender_pearl=12, minecraft:coal#0=4";
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
                description = "Cannot mobs Spawn on decor blocks";
              };
              cannotMobsSpawnOnMechanism = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Cannot mobs Spawn on Mechanism";
              };
              "check.version.online" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "change to 'check.version.online=false' to disable latest version checking";
              };
              "play.sounds" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "change to 'play.sounds=false' to prevent all mod sounds from playing";
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
                            description = "change to 'creosote=true' to add smelting recipes for Creosote Oil to the vanilla furnace";
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
                            description = "change to 'useAltRecipes=true' to use track recipes more similar to vanilla minecraft";
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
                            description = "change to 'ores=false' to prevent the game from crushing ores into dusts (only available if IC2 installed)";
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
                            description = "set the output of the coalcoke and stick recipe for torches, setting to 0 will disable' min=0, default=8, max=32";
                          };
                          "creosote.torches" = lib.mkOption {
                            type = lib.types.int;
                            default = 2;
                            description = "set the output of the creosote and woool recipe for torches, setting to 0 will disable' min=0, default=6, max=16";
                          };
                          gunpowder = lib.mkOption {
                            type = lib.types.bool;
                            default = true;
                            description = "change to 'gunpowder=false' to disable the sulfur, saltpeter, charcoal dust recipe for gunpowder";
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
                            description = "change to 'bronze=false' to disable the bronze recipe for minecarts";
                          };
                          furnace = lib.mkOption {
                            type = lib.types.bool;
                            default = false;
                            description = "change to 'furnace=true' to enable the Furnace Minecart recipe";
                          };
                          steel = lib.mkOption {
                            type = lib.types.bool;
                            default = true;
                            description = "change to 'steel=false' to disable the steel recipe for minecarts";
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
                            description = "change to 'blaze=false' to disable the IC2 Macerator recipe for Blaze Powder";
                          };
                          bones = lib.mkOption {
                            type = lib.types.bool;
                            default = true;
                            description = "change to 'bones=false' to disable the IC2 Macerator recipe for Bonemeal";
                          };
                          charcoal = lib.mkOption {
                            type = lib.types.bool;
                            default = true;
                            description = "change to 'charcoal=false' to disable the IC2 Macerator recipe for Charcoal Dust";
                          };
                          cobble = lib.mkOption {
                            type = lib.types.bool;
                            default = true;
                            description = "change to 'cobble=false' to disable the IC2 Macerator recipes for Cobblestone";
                          };
                          dirt = lib.mkOption {
                            type = lib.types.bool;
                            default = true;
                            description = "change to 'dirt=false' to disable the IC2 Macerator recipe for Dirt";
                          };
                          obsidian = lib.mkOption {
                            type = lib.types.bool;
                            default = false;
                            description = "change to 'obsidian=false' to disable the IC2 Macerator recipes for Cushed Obsidian and Obsidian Dust";
                          };
                          ores = lib.mkOption {
                            type = lib.types.bool;
                            default = true;
                            description = "change to 'ores=false' to disable the IC2 Macerator recipes for Ore Dusts";
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
                            description = "change to 'fertilizer=false' to disable the saltpeter recipe for Forestry Fertilizer";
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
                            description = "change to 'creosote.block=false' to disable the Carptenter Creosote Block recipe";
                          };
                          ties = lib.mkOption {
                            type = lib.types.bool;
                            default = true;
                            description = "change to 'ties=false' to disable the Carptenter Tie recipe";
                          };
                          torches = lib.mkOption {
                            type = lib.types.bool;
                            default = true;
                            description = "change to 'torches=false' to disable the Carptenter Creosote Torch recipe";
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
                            description = "set the minimum number of seconds between cart dispensing, default=0";
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
                            description = "Change to 'allow.stacking=false' to disable the stacking of Iron Tanks";
                          };
                          maxsize = lib.mkOption {
                            type = lib.types.int;
                            default = 9;
                            description = "Allows you to set the max Iron Tank base dimension, valid values are 3, 5, 7, and 9";
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
                            description = "change to 'printDebug=true' to log debug info for Signal Blocks";
                          };
                          "update.interval" = lib.mkOption {
                            type = lib.types.int;
                            default = 4;
                            description = "measured in tick, smaller numbers update more often, resulting in more sensitive signals, but cost more cpu power, default = 4";
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
                            description = "change to 'requirePower=false' to disable the Power Requirements for most machines";
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
                            description = "adjust the heat value of BioFuel in a Boiler";
                          };
                          fuelMultiplier = lib.mkOption {
                            type = lib.types.float;
                            default = 1.0;
                            description = "adjust the heat value of Fuel in a Boiler";
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
                      description = "adjust the amount of fuel used to create Steam, min=0.2, default=1.0, max=6.0";
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
                            description = "Change to 'trackingAura=false' to disable the Tracking Aura";
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
                            description = "Change to 'firestoneIgnitesBlocks=false' to disabled Firestone items igniting blocks around players";
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
                            default = [ ];
                            description = "add entity names to exclude them from explosions caused by high speed collisions";
                          };
                          "max.speed" = lib.mkOption {
                            type = lib.types.float;
                            default = 0.800000011920929;
                            description = "change 'max.speed' to limit max speed on high speed rails, useful if your computer can't keep up with chunk loading, min=0.6, default=0.8, max=1.2";
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
                            description = "change the value to your desired max launch rail force, min=5, default=30, max=50";
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
                      description = "change to 'ops.only=true' to limit the editing of Golden Tickets to server admins only";
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
                            description = "change to 'breakOnDrop=true' to restore vanilla behavior";
                          };
                          collideWithItems = lib.mkOption {
                            type = lib.types.bool;
                            default = false;
                            description = "change to 'collideWithItems=true' to restore minecart collisions with dropped items, ignored if 'register.collision.handler=false'";
                          };
                          maxStackSize = lib.mkOption {
                            type = lib.types.int;
                            default = 3;
                            description = "change the value to your desired minecart stack size, vanilla=1, default=3, max=64";
                          };
                          printLinkingDebug = lib.mkOption {
                            type = lib.types.bool;
                            default = false;
                            description = "change to 'printLinkingDebug=true' to log debug info for Cart Linking";
                          };
                          "register.collision.handler" = lib.mkOption {
                            type = lib.types.bool;
                            default = true;
                            description = "change to 'register.collision.handler=false' to use a minecart collision handler from a different mod or vanilla behavior";
                          };
                          "solid.carts" = lib.mkOption {
                            type = lib.types.bool;
                            default = true;
                            description = "change to 'solid.carts=false' to return minecarts to vanilla player vs cart collision behavior in vanilla minecarts are ghost like can be walked through but making carts solid also makes them hard to push by hand this setting is ignored if aren't using the Railcraft Collision Handler";
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
                            description = "change to 'adjustDrag=false' to give basic carts the original vanilla drag values, after changing you may need to replace the carts to see any change in game";
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
                            description = "change to 'allowLiquids=true' to allow you put cans/capsules in Chest Carts";
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
                            description = "change to 'destroyBlocks=true' to cause the Bore to destroy the blocks it mines instead of dropping them";
                          };
                          mineAllBlocks = lib.mkOption {
                            type = lib.types.bool;
                            default = true;
                            description = "change to 'mineAllBlocks=false' to enable mining checks, use true setting with caution, especially on servers";
                          };
                          mineableBlocks = lib.mkOption {
                            type = lib.types.str;
                            default = "{}";
                            description = "add block ids to 'mineableBlocks' in a common seperated list to define non-vanilla blocks mineable by the tunnel bore ignored if 'tweaks.carts.bore.mineAllBlocks=true' metadata sensative entries can be defined in the form 'modid:blockname#metadata' Example:mineableBlocks= { minecraft:stone, minecraft:stonebrick#3 }";
                          };
                          miningSpeed = lib.mkOption {
                            type = lib.types.float;
                            default = 1.0;
                            description = "adjust the speed at which the Bore mines blocks, min=0.1, default=1.0, max=50.0";
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
                            description = "change to 'damageMobs=false' to disable Locomotive damage on mobs, they will still knockback mobs";
                          };
                          horsepower = lib.mkOption {
                            type = lib.types.int;
                            default = 15;
                            description = "controls how much power locomotives have and how many carts they can pull be warned, longer trains have a greater chance for glitches as such it HIGHLY recommended you do not change this";
                          };
                          steam = lib.mkOption {
                            default = {};
                            type = lib.types.submodule {
                              options = {
                                efficiencyMulitplier = lib.mkOption {
                                  type = lib.types.float;
                                  default = 3.0;
                                  description = "adjust the multiplier used when calculating fuel use, min=0.2, default=3.0, max=12.0";
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
                            description = "change the value to your desired Tank Cart capacity in buckets, min=4, default=32, max=64, ignored if 'tweaks.minecarts.tank.useCustomValues=false'";
                          };
                          fillrate = lib.mkOption {
                            type = lib.types.int;
                            default = 32;
                            description = "change the value to your desired Tank Cart fill rate in milli-buckets per tick, min=4, default=32, max=64 there are 1000 milli-buckets in a bucket, ignored if 'tweaks.minecarts.tank.useCustomValues=false'";
                          };
                          useCustomValues = lib.mkOption {
                            type = lib.types.bool;
                            default = false;
                            description = "change to 'useCustomValues=true' to adjust the Tank Cart's capacity and fill rate";
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
