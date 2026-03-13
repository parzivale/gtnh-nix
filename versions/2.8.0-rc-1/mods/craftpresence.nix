{lib, ...}: {
  craftpresence_json = lib.mkOption {
    description = "craftpresence_json configuration (./config/craftpresence.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/craftpresence.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        _schemaVersion = lib.mkOption {
          type = lib.types.int;
          default = 6;
        };
        _lastMCVersionId = lib.mkOption {
          type = lib.types.int;
          default = 5;
        };
        generalSettings = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              detectATLauncherInstance = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              detectCurseManifest = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              detectMultiMCManifest = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              detectMCUpdaterInstance = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              detectTechnicPack = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              detectModrinthPack = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              detectBiomeData = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              detectDimensionData = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              detectWorldData = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              clientId = lib.mkOption {
                type = lib.types.str;
                default = "1118980710187929681";
              };
              defaultIcon = lib.mkOption {
                type = lib.types.str;
                default = "gtnhlogoresized";
              };
              enableJoinRequests = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              preferredClientLevel = lib.mkOption {
                type = lib.types.int;
                default = 3;
              };
              resetTimeOnInit = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              autoRegister = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
            };
          };
        };
        biomeSettings = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              fallbackBiomeIcon = lib.mkOption {
                type = lib.types.str;
                default = "gtnhlogoresized";
              };
              biomeData = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    default = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          textOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "Playing in {biome.name}";
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
        dimensionSettings = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              fallbackDimensionIcon = lib.mkOption {
                type = lib.types.str;
                default = "default";
              };
              dimensionData = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    enceladus = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          textOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "On {dimension.name}";
                          };
                          iconOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "enceladus";
                          };
                        };
                      };
                    };
                    mirror = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          textOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "In the {dimension.name}";
                          };
                          iconOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "mirror";
                          };
                        };
                      };
                    };
                    torment = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          textOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "In the {dimension.name}";
                          };
                          iconOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "torment";
                          };
                        };
                      };
                    };
                    spirit_world = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          textOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "In the {dimension.name}";
                          };
                          iconOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "spirit_world";
                          };
                        };
                      };
                    };
                    mercury = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          textOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "On {dimension.name}";
                          };
                          iconOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "mercury";
                          };
                        };
                      };
                    };
                    underdark = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          textOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "In the Deep Dark";
                          };
                          iconOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "underdark";
                          };
                        };
                      };
                    };
                    dimensiondarkworld = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          textOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "In the Dark World";
                          };
                          iconOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "dark_world";
                          };
                        };
                      };
                    };
                    the_end = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          textOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "In the End";
                          };
                        };
                      };
                    };
                    default = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          textOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "In the {dimension.name}";
                          };
                          iconOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "default";
                          };
                        };
                      };
                    };
                    venus = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          textOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "In the {dimension.name}";
                          };
                          iconOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "venus";
                          };
                        };
                      };
                    };
                    "α_centauri_bb" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          textOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "On {dimension.name}";
                          };
                          iconOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "a_centauri_b";
                          };
                        };
                      };
                    };
                    bedrock = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          textOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "In the {dimension.name}";
                          };
                          iconOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "bedrock";
                          };
                        };
                      };
                    };
                    "t_ceti_е" = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          textOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "On {dimension.name}";
                          };
                          iconOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "tcetie";
                          };
                        };
                      };
                    };
                    titan = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          textOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "On {dimension.name}";
                          };
                          iconOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "titan";
                          };
                        };
                      };
                    };
                    ganymede = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          textOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "On {dimension.name}";
                          };
                          iconOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "ganymede";
                          };
                        };
                      };
                    };
                    ceres = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          textOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "On {dimension.name}";
                          };
                          iconOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "ceres";
                          };
                        };
                      };
                    };
                    twilight_forest = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          textOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "In the {dimension.name}";
                          };
                          iconOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "twilight_forestv2";
                          };
                        };
                      };
                    };
                    oberon = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          textOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "On {dimension.name}";
                          };
                          iconOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "oberon";
                          };
                        };
                      };
                    };
                    europa = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          textOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "On {dimension.name}";
                          };
                          iconOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "europa";
                          };
                        };
                      };
                    };
                    triton = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          textOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "On {dimension.name}";
                          };
                          iconOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "triton";
                          };
                        };
                      };
                    };
                    phobos = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          textOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "On {dimension.name}";
                          };
                          iconOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "phobos";
                          };
                        };
                      };
                    };
                    asteroids = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          textOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "Mining Asteroids";
                          };
                          iconOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "asteroids";
                          };
                        };
                      };
                    };
                    io = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          textOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "On {dimension.name}";
                          };
                          iconOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "io";
                          };
                        };
                      };
                    };
                    mars = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          textOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "On {dimension.name}";
                          };
                        };
                      };
                    };
                    miranda = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          textOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "On {dimension.name}";
                          };
                          iconOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "miranda";
                          };
                        };
                      };
                    };
                    haumea = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          textOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "On {dimension.name}";
                          };
                          iconOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "haumea";
                          };
                        };
                      };
                    };
                    proteus = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          textOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "On {dimension.name}";
                          };
                          iconOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "proteus";
                          };
                        };
                      };
                    };
                    the_last_millenium = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          textOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "In the Last Millenium";
                          };
                          iconOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "last_millenium";
                          };
                        };
                      };
                    };
                    pluto = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          textOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "On {dimension.name}";
                          };
                          iconOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "pluto";
                          };
                        };
                      };
                    };
                    makemake = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          textOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "On {dimension.name}";
                          };
                          iconOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "makemake";
                          };
                        };
                      };
                    };
                    barnarda_f = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          textOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "On {dimension.name}";
                          };
                          iconOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "barnarda_f";
                          };
                        };
                      };
                    };
                    ross128b = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          textOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "On {dimension.name}";
                          };
                          iconOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "ross128b";
                          };
                        };
                      };
                    };
                    australia = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          textOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "In {dimension.name}";
                          };
                          iconOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "australia";
                          };
                        };
                      };
                    };
                    overworld = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          textOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "In the {dimension.name}";
                          };
                          iconOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "overworldv2";
                          };
                        };
                      };
                    };
                    deimos = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          textOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "On {dimension.name}";
                          };
                          iconOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "deimos";
                          };
                        };
                      };
                    };
                    the_outer_lands = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          textOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "In the Outer Lands";
                          };
                          iconOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "the_outer_lands";
                          };
                        };
                      };
                    };
                    kuiper_belt = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          textOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "On the {dimension.name}";
                          };
                          iconOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "kuiper_belt";
                          };
                        };
                      };
                    };
                    outer_lands = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          textOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "In the {dimension.name}";
                          };
                          iconOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "the_outer_lands";
                          };
                        };
                      };
                    };
                    moon = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          textOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "On the {dimension.name}";
                          };
                        };
                      };
                    };
                    spectreworld = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          textOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "In the Spectre World";
                          };
                          iconOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "spectre_world";
                          };
                        };
                      };
                    };
                    the_nether = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          textOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "In the Nether";
                          };
                          iconOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "nether";
                          };
                        };
                      };
                    };
                    barnarda_e = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          textOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "On {dimension.name}";
                          };
                          iconOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "barnarda_e";
                          };
                        };
                      };
                    };
                    pocket_plane = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          textOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "In a {dimension.name}";
                          };
                          iconOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "pocket_plane";
                          };
                        };
                      };
                    };
                    ross128ba = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          textOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "On {dimension.name}";
                          };
                          iconOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "ross128a";
                          };
                        };
                      };
                    };
                    vega_b = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          textOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "On {dimension.name}";
                          };
                          iconOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "vega_b";
                          };
                        };
                      };
                    };
                    barnarda_c = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          textOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "On {dimension.name}";
                          };
                          iconOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "barnarda_c";
                          };
                        };
                      };
                    };
                    callisto = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          textOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "On {dimension.name}";
                          };
                          iconOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "callisto";
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
        serverSettings = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              fallbackServerIcon = lib.mkOption {
                type = lib.types.str;
                default = "gtnhlogoresized";
              };
              fallbackServerName = lib.mkOption {
                type = lib.types.str;
                default = "GT:NH Server";
              };
              fallbackServerMotd = lib.mkOption {
                type = lib.types.str;
                default = "A Minecraft Server";
              };
              serverData = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    default = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          textOverride = lib.mkOption {
                            type = lib.types.str;
                            default = "Playing on {server.motd.raw}";
                          };
                        };
                      };
                    };
                  };
                };
              };
              pingRateInterval = lib.mkOption {
                type = lib.types.int;
                default = 5;
              };
              pingRateUnit = lib.mkOption {
                type = lib.types.str;
                default = "minutes";
              };
            };
          };
        };
        statusMessages = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              mainMenuData = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    textOverride = lib.mkOption {
                      type = lib.types.str;
                      default = "In the Main Menu";
                    };
                  };
                };
              };
              loadingData = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    textOverride = lib.mkOption {
                      type = lib.types.str;
                      default = "Loading...";
                    };
                  };
                };
              };
              lanData = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    textOverride = lib.mkOption {
                      type = lib.types.str;
                      default = "Playing on a LAN Server";
                    };
                  };
                };
              };
              singleplayerData = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    textOverride = lib.mkOption {
                      type = lib.types.str;
                      default = "Playing Singleplayer";
                    };
                  };
                };
              };
              realmData = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    textOverride = lib.mkOption {
                      type = lib.types.str;
                      default = "Playing on {server.motd.raw}";
                    };
                  };
                };
              };
            };
          };
        };
        advancedSettings = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              enablePerGui = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              enablePerItem = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              enablePerEntity = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              formatWords = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              debugMode = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              verboseMode = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              refreshRate = lib.mkOption {
                type = lib.types.int;
                default = 2;
              };
              allowPlaceholderPreviews = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              guiSettings = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    fallbackGuiIcon = lib.mkOption {
                      type = lib.types.str;
                      default = "unknown";
                    };
                    guiData = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          default = lib.mkOption {
                            default = {};
                            type = lib.types.submodule {
                              options = {
                                textOverride = lib.mkOption {
                                  type = lib.types.str;
                                  default = "In {screen.name}";
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
              itemMessages = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    default = lib.mkOption {
                      type = lib.types.str;
                      default = "Holding {item.message.holding}";
                    };
                  };
                };
              };
              entitySettings = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    fallbackEntityIcon = lib.mkOption {
                      type = lib.types.str;
                      default = "unknown";
                    };
                    targetData = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          default = lib.mkOption {
                            default = {};
                            type = lib.types.submodule {
                              options = {
                                textOverride = lib.mkOption {
                                  type = lib.types.str;
                                  default = "Targeting {entity.target.name}";
                                };
                              };
                            };
                          };
                        };
                      };
                    };
                    ridingData = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          default = lib.mkOption {
                            default = {};
                            type = lib.types.submodule {
                              options = {
                                textOverride = lib.mkOption {
                                  type = lib.types.str;
                                  default = "Riding {entity.riding.name}";
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
              allowEndpointIcons = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              serverIconEndpoint = lib.mkOption {
                type = lib.types.str;
                default = "https://api.mcsrvstat.us/icon/{server.address.short}";
              };
              playerSkinEndpoint = lib.mkOption {
                type = lib.types.str;
                default = "https://mc-heads.net/avatar/{getOrDefault(player.uuid.short, player.name)}";
              };
              allowDuplicatePackets = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              maxConnectionAttempts = lib.mkOption {
                type = lib.types.int;
                default = 10;
              };
              enableClassGraph = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              useClassLoader = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
            };
          };
        };
        accessibilitySettings = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              languageId = lib.mkOption {
                type = lib.types.str;
                default = "en_US";
              };
              stripTranslationColors = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              stripTranslationFormatting = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              stripExtraGuiElements = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              configKeyCode = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
            };
          };
        };
        displaySettings = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              presenceData = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    enabled = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    useAsMain = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                    };
                    isInstance = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                    };
                    activityType = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    partyPrivacy = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    details = lib.mkOption {
                      type = lib.types.str;
                      default = "{menu.message}{dimension.message}";
                    };
                    gameState = lib.mkOption {
                      type = lib.types.str;
                      default = "{server.message} {custom.pack}";
                    };
                    largeImageKey = lib.mkOption {
                      type = lib.types.str;
                      default = "{menu.icon}{dimension.icon}";
                    };
                    largeImageText = lib.mkOption {
                      type = lib.types.str;
                      default = "{menu.message}{dimension.message}";
                    };
                    smallImageKey = lib.mkOption {
                      type = lib.types.str;
                      default = "{server.icon}{pack.icon}";
                    };
                    smallImageText = lib.mkOption {
                      type = lib.types.str;
                      default = "{server.message} {custom.pack}";
                    };
                    startTimestamp = lib.mkOption {
                      type = lib.types.str;
                      default = "{data.general.time}";
                    };
                    endTimestamp = lib.mkOption {
                      type = lib.types.str;
                      default = "";
                    };
                    buttons = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          default = lib.mkOption {
                            default = {};
                            type = lib.types.submodule {
                              options = {
                                label = lib.mkOption {
                                  type = lib.types.str;
                                  default = "Example Text";
                                };
                                url = lib.mkOption {
                                  type = lib.types.str;
                                  default = "https://google.com";
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
              dynamicIcons = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    boubou_19 = lib.mkOption {
                      type = lib.types.str;
                      default = "https://mc-heads.net/avatar/d28e5f134b8444ce9d3251f1b569adda";
                    };
                    "zeta.gtnewhorizons.com" = lib.mkOption {
                      type = lib.types.str;
                      default = "https://api.mcsrvstat.us/icon/zeta.gtnewhorizons.com";
                    };
                    default = lib.mkOption {
                      type = lib.types.str;
                      default = "https://via.placeholder.com/256.png";
                    };
                  };
                };
              };
              dynamicVariables = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    default = lib.mkOption {
                      type = lib.types.str;
                      default = "Example Text";
                    };
                    mods = lib.mkOption {
                      type = lib.types.str;
                      default = "{general.mods} Mod(s)";
                    };
                    player_info_coordinate = lib.mkOption {
                      type = lib.types.str;
                      default = "At {player.position.x}, {player.position.z}";
                    };
                    players = lib.mkOption {
                      type = lib.types.str;
                      default = "{server.players.current} / {server.players.max} Players";
                    };
                    player_info_in = lib.mkOption {
                      type = lib.types.str;
                      default = "({custom.player_info_health})";
                    };
                    player_info_items = lib.mkOption {
                      type = lib.types.str;
                      default = "Items: {item.main_hand.message}";
                    };
                    player_info_out = lib.mkOption {
                      type = lib.types.str;
                      default = "As {player.name}";
                    };
                    player_info_health = lib.mkOption {
                      type = lib.types.str;
                      default = "Health: {player.health.current}/{player.health.max}";
                    };
                    world_info = lib.mkOption {
                      type = lib.types.str;
                      default = "On {world.name}";
                    };
                    pack = lib.mkOption {
                      type = lib.types.str;
                      default = "Minecraft 1.7.10";
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
