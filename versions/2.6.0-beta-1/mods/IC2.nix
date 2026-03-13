{lib, ...}: {
  IC2_ini = lib.mkOption {
    description = "IC2_ini configuration (./config/IC2.ini)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/IC2.ini";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "ini";
        readOnly = true;
        };
        worldgen = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              rubbertree = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              copperore = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              tinore = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              uraniumore = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              leadore = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              oredensityfactor = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
            };
          };
        };
        protection = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              wrenchlogging = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              nukeexplosionpowerlimit = lib.mkOption {
                type = lib.types.int;
                default = 100;
              };
              reactorexplosionpowerlimit = lib.mkOption {
                type = lib.types.int;
                default = 100;
              };
              enablenuke = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        balance = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              minerdischargetier = lib.mkOption {
                type = lib.types.int;
                default = 1;
              };
              teleporteruseinventoryweight = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              energyretainedinstorageblockdrops = lib.mkOption {
                type = lib.types.float;
                default = 0.8;
              };
              uuenergyfactor = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
              disableenderchest = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              recyclerblacklist = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:glass_pane, minecraft:stick, minecraft:snowball, minecraft:snow_layer, minecraft:snow, IC2:blockScaffold";
              };
              recyclerwhitelist = lib.mkOption {
                type = lib.types.str;
                default = "";
              };
              ignorewrenchrequirement = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
            };
          };
        };
        "balance / energy / generator" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              generator = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
              geothermal = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
              water = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
              solar = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
              wind = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
              nuclear = lib.mkOption {
                type = lib.types.float;
                default = 5.0;
              };
              semifluidoil = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
              semifluidfuel = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
              semifluidbiomass = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
              semifluidbioethanol = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
              semifluidbiogas = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
              stirling = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
              kinetic = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
              radioisotope = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
            };
          };
        };
        "balance / energy / heatgenerator" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              semifluidoil = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
              semifluidfuel = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
              semifluidbiomass = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
              semifluidbioethanol = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
              semifluidbiogas = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
              solid = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
              radioisotope = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
              electric = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
            };
          };
        };
        "balance / energy / kineticgenerator" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              water = lib.mkOption {
                type = lib.types.float;
                default = 10.0;
              };
              wind = lib.mkOption {
                type = lib.types.float;
                default = 5.0;
              };
              manual = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
              steam = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
              electric = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
            };
          };
        };
        "balance / energy / fluidconversion" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              heatexchangerlava = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
              heatexchangerhotcoolant = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
              heatexchangerwater = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
            };
          };
        };
        "balance / energy / FluidReactor" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              outputmodifier = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
            };
          };
        };
        "balance / SteamKineticGenerator" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              rotorlivetime = lib.mkOption {
                type = lib.types.int;
                default = 86400;
              };
            };
          };
        };
        "balance / steamgenerator / calcification" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              maxcalcification = lib.mkOption {
                type = lib.types.int;
                default = 100000;
              };
            };
          };
        };
        "balance / fermenter" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              need_amount_biomass_per_run = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              output_amount_biogas_per_run = lib.mkOption {
                type = lib.types.int;
                default = 200;
              };
              hu_per_run = lib.mkOption {
                type = lib.types.int;
                default = 8000;
              };
              biomass_per_fertilizier = lib.mkOption {
                type = lib.types.int;
                default = 500;
              };
            };
          };
        };
        "balance / uu-values / predefined" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              ic2 = lib.mkOption {
                type = lib.types.str;
                default = "itemOreIridium = 12000";
              };
            };
          };
        };
        recipes = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              disable = lib.mkOption {
                type = lib.types.str;
                default = "";
              };
              purge = lib.mkOption {
                type = lib.types.str;
                default = "";
              };
              allowcoincrafting = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              requireic2circuits = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              smelttoic2items = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              ignoreinvalidrecipes = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
            };
          };
        };
        misc = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              enableic2audio = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              maxaudiosourcecount = lib.mkOption {
                type = lib.types.int;
                default = 32;
              };
              hidesecretrecipes = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              quantumspeedonsprint = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              allowburningscrap = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              additionalvaluableores = lib.mkOption {
                type = lib.types.str;
                default = "";
              };
              uselineartransfermodel = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              radiationpotionid = lib.mkOption {
                type = lib.types.int;
                default = 24;
              };
            };
          };
        };
      };
    };
  };
}
