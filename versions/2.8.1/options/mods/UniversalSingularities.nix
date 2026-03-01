{lib, ...}: {
  UniversalSingularities = lib.mkOption {
    description = "UniversalSingularities configuration (./config/UniversalSingularities.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/UniversalSingularities.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        bigreactors = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              blutonium = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              cyanite = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              graphite = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              ludicrite = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              yellorium = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        draconicevolution = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              draconium = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              draconiumAwakened = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        enderio = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              conductiveIron = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              darkSteel = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              electricalSteel = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              energeticAlloy = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              pulsatingIron = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              redstoneAlloy = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              soularium = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              vibrantAlloy = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        extraplanets = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              blueGem = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              carbon = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              crystal = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              palladium = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              redGem = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              whiteGem = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        extratic = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              enabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              fairy = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              pokefennium = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        extrautilities = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              enabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              unstable = lib.mkOption {
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
              aluminum = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              blackSteel = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              brass = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              bronze = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              charcoal = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              coalSingularityEasterEgg = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              damascusSteel = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              desh = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              electrum = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              electrumFlux = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              europium = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              gangue = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              hideDisabledSingularitiesInNei = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              invar = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              iridium = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              magnesium = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              meteoricIron = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              naquadria = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              netherstar = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              osmium = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              palladium = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              peridot = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              phosphorus = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              platinum = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              plutonium = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              quantum = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              quicksilver = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              roseGold = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              ruby = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              sapphire = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              shadowSteel = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              steel = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              titanium = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              tricalciumphosphate = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              tungsten = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              uranium = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              zinc = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        mekanism = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              enabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              refinedGlowstone = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              refinedObsidian = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        metallurgy = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              amordrine = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              angmallen = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              bitumen = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              blackSteel = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              celenegil = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              damascusSteel = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              desichalkos = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              haderoth = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              hepatizon = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              inolashite = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              phosphorus = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              potash = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              quicksilver = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              saltpeter = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              shadowSteel = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              sulfur = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              tartarite = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        pneumaticcraft = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              compressedIron = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        projectred = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              electrotine = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        redstonearsenal = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              crystalFlux = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              electrumFlux = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        tinkersconstruct = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              aluminumBrass = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              alumite = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              ardite = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              cobalt = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              ender = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              glue = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              manyullyn = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        vanilla = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              coal = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              diamond = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              emerald = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
      };
    };
  };
}
