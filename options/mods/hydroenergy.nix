{lib, ...}: {
  hydroenergy = lib.mkOption {
    description = "hydroenergy configuration (./config/hydroenergy.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
          type = lib.types.str;
          default = "./config/hydroenergy.cfg";
          readOnly = true;
        };
        kind = lib.mkOption {
          type = lib.types.str;
          default = "forge";
          readOnly = true;
        };
        "energy balance" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              damDrainPerSecond = lib.mkOption {
                type = lib.types.int;
                default = 2048;
                description = "[SERVER] How many EU a dam will provide as Pressurized Water for turbines per tick.";
              };
              efficiencyLossPerTier = lib.mkOption {
                type = lib.types.float;
                default = 0.029999999329447746;
                description = "[SERVER] Efficiency for Hydro Pump and Hydro Turbine in voltage variants and beginning from LV with '(1.0 - efficiencyLossPerTier)'.";
              };
              enabledTiers = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = ["mv" "hv" "ev" "iv" "luv" "zpm" "uv"];
                description = "[SERVER] A list of all tiers that should have a Hydro Pump and Hydro Turbine generated. ULV is ignored since it is disabled.";
              };
              milliBucketPerEU = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
                description = "[SERVER] Conversion ratio between Pressurized Water and EU on pressure 1. Affects the throughput on pipes between multi blocks and how much energy is stored in each Hydro Dam.";
              };
              pressureIncreasePerTier = lib.mkOption {
                type = lib.types.float;
                default = 2.0;
                description = "[SERVER] Hydro Pump height limit for voltage variants in blocks and beginning from LV with '1 * pressureIncreasePerTier'.";
              };
              waterBonusPerSurfaceBlockPerRainTick = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
                description = "[SERVER] How many EU are added to a dam during rain for each water block on the highest Y coordinate aka water surface when full.";
              };
            };
          };
        };
        general = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              blockIdOffset = lib.mkOption {
                type = lib.types.int;
                default = 17000;
                description = "[SERVER + CLIENT] Offset of blockIds for GregTech block registration";
              };
              clippingOffset = lib.mkOption {
                type = lib.types.float;
                default = 0.05000000074505806;
                description = "[SERVER + CLIENT] If water is sitting too narrow over a block there are graphical issues (Depth buffer resolution). To fix this, the game will not render a waterLevel that sits lower then the specified value over a block. This value is also used for physics calculation and is synced from the server all clients.";
              };
              delayBetweenSpreadingChunks = lib.mkOption {
                type = lib.types.int;
                default = 2000;
                description = "[SERVER] Delay in milliseconds the game will wait between processing a chunk for water spreading. Keep in mind, that a single tick takes care of a whole chunk between y=0 and y=255 at once!";
              };
              dimensionIdWhitelist = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [0];
                description = "[SERVER] List of dimension a player is allowed to place a controller";
              };
              forceOpenGL = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[CLIENT] Some Macs may always report OpenGL 2.1 - activate this to disable the OpenGL 3.2 check; it will assume you have OpenGL 3.2 or greater. But be warned: it may crash!";
              };
              maxDams = lib.mkOption {
                type = lib.types.int;
                default = 16;
                description = "[SERVER] How many dams should the game support. At least as many as the server you want to connect to. Each dam will receive its own water block and it will also have a minuscule performance impact. Keep it only as long as you need. You can always just raise, but not shorten the value.";
              };
              minLightUpdateTimePerSubChunk = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "[CLIENT] Light calculation required all affected chunks to be rerendered. When a change in waterLevel induces rerendering it will also calculate a minimum delay before it can happen again. Light updates will not be lost, just delayed. For every subChunk (16 blocks high) that was rerendered because of this update event, the game will add the specified delay (in milliseconds) up for the actual delay. You should expect the number of rerendered subChunks to be in the low hundreds";
              };
              minimalWaterUpdateInterval = lib.mkOption {
                type = lib.types.int;
                default = 1000;
                description = "[SERVER] Minimum delay in milliseconds between update packets from the server to ALL clients.";
              };
              useLimitedRendering = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "[CLIENT] Activate this if you have performance issues with the mod. But be warned: you will have limited render capabilities!";
              };
            };
          };
        };
        spreading = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              maxWaterSpreadDown = lib.mkOption {
                type = lib.types.int;
                default = 1000;
                description = "[SERVER]";
              };
              maxWaterSpreadEast = lib.mkOption {
                type = lib.types.int;
                default = 1000;
                description = "[SERVER]";
              };
              maxWaterSpreadNorth = lib.mkOption {
                type = lib.types.int;
                default = 1000;
                description = "[SERVER]";
              };
              maxWaterSpreadSouth = lib.mkOption {
                type = lib.types.int;
                default = 10000;
                description = "[SERVER]";
              };
              maxWaterSpreadUp = lib.mkOption {
                type = lib.types.int;
                default = 24;
                description = "[SERVER]";
              };
              maxWaterSpreadWest = lib.mkOption {
                type = lib.types.int;
                default = 1000;
                description = "[SERVER]";
              };
            };
          };
        };
      };
    };
  };
}
