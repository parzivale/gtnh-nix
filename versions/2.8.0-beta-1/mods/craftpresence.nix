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
      _lastMCVersionId = lib.mkOption {
        type = lib.types.int;
        default = 5;
      };
      _schemaVersion = lib.mkOption {
        type = lib.types.int;
        default = 6;
      };
      accessibilitySettings = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          configKeyCode = lib.mkOption {
            type = lib.types.int;
            default = 0;
          };
          languageId = lib.mkOption {
            type = lib.types.str;
            default = "en_US";
          };
          stripExtraGuiElements = lib.mkOption {
            type = lib.types.bool;
            default = false;
          };
          stripTranslationColors = lib.mkOption {
            type = lib.types.bool;
            default = false;
          };
          stripTranslationFormatting = lib.mkOption {
            type = lib.types.bool;
            default = false;
          };
          };
        };
      };
      advancedSettings = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          allowDuplicatePackets = lib.mkOption {
            type = lib.types.bool;
            default = false;
          };
          allowEndpointIcons = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          allowPlaceholderPreviews = lib.mkOption {
            type = lib.types.bool;
            default = false;
          };
          debugMode = lib.mkOption {
            type = lib.types.bool;
            default = false;
          };
          enableClassGraph = lib.mkOption {
            type = lib.types.bool;
            default = false;
          };
          enablePerEntity = lib.mkOption {
            type = lib.types.bool;
            default = false;
          };
          enablePerGui = lib.mkOption {
            type = lib.types.bool;
            default = false;
          };
          enablePerItem = lib.mkOption {
            type = lib.types.bool;
            default = false;
          };
          entitySettings = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              fallbackEntityIcon = lib.mkOption {
                type = lib.types.str;
                default = "unknown";
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
              };
            };
          };
          formatWords = lib.mkOption {
            type = lib.types.bool;
            default = true;
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
          maxConnectionAttempts = lib.mkOption {
            type = lib.types.int;
            default = 10;
          };
          playerSkinEndpoint = lib.mkOption {
            type = lib.types.str;
            default = "https://mc-heads.net/avatar/{getOrDefault(player.uuid.short, player.name)}";
          };
          refreshRate = lib.mkOption {
            type = lib.types.int;
            default = 2;
          };
          serverIconEndpoint = lib.mkOption {
            type = lib.types.str;
            default = "https://api.mcsrvstat.us/icon/{server.address.short}";
          };
          useClassLoader = lib.mkOption {
            type = lib.types.bool;
            default = false;
          };
          verboseMode = lib.mkOption {
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
          fallbackBiomeIcon = lib.mkOption {
            type = lib.types.str;
            default = "gtnhlogoresized";
          };
          };
        };
      };
      dimensionSettings = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          dimensionData = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              asteroids = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  iconOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "asteroids";
                  };
                  textOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "Mining Asteroids";
                  };
                  };
                };
              };
              australia = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  iconOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "australia";
                  };
                  textOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "In {dimension.name}";
                  };
                  };
                };
              };
              barnarda_c = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  iconOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "barnarda_c";
                  };
                  textOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "On {dimension.name}";
                  };
                  };
                };
              };
              barnarda_e = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  iconOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "barnarda_e";
                  };
                  textOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "On {dimension.name}";
                  };
                  };
                };
              };
              barnarda_f = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  iconOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "barnarda_f";
                  };
                  textOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "On {dimension.name}";
                  };
                  };
                };
              };
              bedrock = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  iconOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "bedrock";
                  };
                  textOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "In the {dimension.name}";
                  };
                  };
                };
              };
              callisto = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  iconOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "callisto";
                  };
                  textOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "On {dimension.name}";
                  };
                  };
                };
              };
              ceres = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  iconOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "ceres";
                  };
                  textOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "On {dimension.name}";
                  };
                  };
                };
              };
              default = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  iconOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "default";
                  };
                  textOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "In the {dimension.name}";
                  };
                  };
                };
              };
              deimos = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  iconOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "deimos";
                  };
                  textOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "On {dimension.name}";
                  };
                  };
                };
              };
              dimensiondarkworld = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  iconOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "dark_world";
                  };
                  textOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "In the Dark World";
                  };
                  };
                };
              };
              enceladus = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  iconOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "enceladus";
                  };
                  textOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "On {dimension.name}";
                  };
                  };
                };
              };
              europa = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  iconOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "europa";
                  };
                  textOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "On {dimension.name}";
                  };
                  };
                };
              };
              ganymede = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  iconOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "ganymede";
                  };
                  textOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "On {dimension.name}";
                  };
                  };
                };
              };
              haumea = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  iconOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "haumea";
                  };
                  textOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "On {dimension.name}";
                  };
                  };
                };
              };
              io = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  iconOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "io";
                  };
                  textOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "On {dimension.name}";
                  };
                  };
                };
              };
              kuiper_belt = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  iconOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "kuiper_belt";
                  };
                  textOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "On the {dimension.name}";
                  };
                  };
                };
              };
              makemake = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  iconOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "makemake";
                  };
                  textOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "On {dimension.name}";
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
              mercury = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  iconOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "mercury";
                  };
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
                  iconOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "miranda";
                  };
                  textOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "On {dimension.name}";
                  };
                  };
                };
              };
              mirror = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  iconOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "mirror";
                  };
                  textOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "In the {dimension.name}";
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
              oberon = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  iconOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "oberon";
                  };
                  textOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "On {dimension.name}";
                  };
                  };
                };
              };
              outer_lands = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  iconOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "the_outer_lands";
                  };
                  textOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "In the {dimension.name}";
                  };
                  };
                };
              };
              overworld = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  iconOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "overworldv2";
                  };
                  textOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "In the {dimension.name}";
                  };
                  };
                };
              };
              phobos = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  iconOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "phobos";
                  };
                  textOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "On {dimension.name}";
                  };
                  };
                };
              };
              pluto = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  iconOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "pluto";
                  };
                  textOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "On {dimension.name}";
                  };
                  };
                };
              };
              pocket_plane = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  iconOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "pocket_plane";
                  };
                  textOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "In a {dimension.name}";
                  };
                  };
                };
              };
              proteus = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  iconOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "proteus";
                  };
                  textOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "On {dimension.name}";
                  };
                  };
                };
              };
              ross128b = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  iconOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "ross128b";
                  };
                  textOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "On {dimension.name}";
                  };
                  };
                };
              };
              ross128ba = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  iconOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "ross128a";
                  };
                  textOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "On {dimension.name}";
                  };
                  };
                };
              };
              spectreworld = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  iconOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "spectre_world";
                  };
                  textOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "In the Spectre World";
                  };
                  };
                };
              };
              spirit_world = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  iconOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "spirit_world";
                  };
                  textOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "In the {dimension.name}";
                  };
                  };
                };
              };
              "t_ceti_е" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  iconOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "tcetie";
                  };
                  textOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "On {dimension.name}";
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
              the_last_millenium = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  iconOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "last_millenium";
                  };
                  textOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "In the Last Millenium";
                  };
                  };
                };
              };
              the_nether = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  iconOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "nether";
                  };
                  textOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "In the Nether";
                  };
                  };
                };
              };
              the_outer_lands = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  iconOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "the_outer_lands";
                  };
                  textOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "In the Outer Lands";
                  };
                  };
                };
              };
              titan = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  iconOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "titan";
                  };
                  textOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "On {dimension.name}";
                  };
                  };
                };
              };
              torment = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  iconOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "torment";
                  };
                  textOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "In the {dimension.name}";
                  };
                  };
                };
              };
              triton = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  iconOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "triton";
                  };
                  textOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "On {dimension.name}";
                  };
                  };
                };
              };
              twilight_forest = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  iconOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "twilight_forestv2";
                  };
                  textOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "In the {dimension.name}";
                  };
                  };
                };
              };
              underdark = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  iconOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "underdark";
                  };
                  textOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "In the Deep Dark";
                  };
                  };
                };
              };
              vega_b = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  iconOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "vega_b";
                  };
                  textOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "On {dimension.name}";
                  };
                  };
                };
              };
              venus = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  iconOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "venus";
                  };
                  textOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "In the {dimension.name}";
                  };
                  };
                };
              };
              "α_centauri_bb" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                  iconOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "a_centauri_b";
                  };
                  textOverride = lib.mkOption {
                    type = lib.types.str;
                    default = "On {dimension.name}";
                  };
                  };
                };
              };
              };
            };
          };
          fallbackDimensionIcon = lib.mkOption {
            type = lib.types.str;
            default = "default";
          };
          };
        };
      };
      displaySettings = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          dynamicIcons = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              boubou_19 = lib.mkOption {
                type = lib.types.str;
                default = "https://mc-heads.net/avatar/d28e5f134b8444ce9d3251f1b569adda";
              };
              default = lib.mkOption {
                type = lib.types.str;
                default = "https://via.placeholder.com/256.png";
              };
              "zeta.gtnewhorizons.com" = lib.mkOption {
                type = lib.types.str;
                default = "https://api.mcsrvstat.us/icon/zeta.gtnewhorizons.com";
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
              pack = lib.mkOption {
                type = lib.types.str;
                default = "Minecraft 1.7.10";
              };
              player_info_coordinate = lib.mkOption {
                type = lib.types.str;
                default = "At {player.position.x}, {player.position.z}";
              };
              player_info_health = lib.mkOption {
                type = lib.types.str;
                default = "Health: {player.health.current}/{player.health.max}";
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
              players = lib.mkOption {
                type = lib.types.str;
                default = "{server.players.current} / {server.players.max} Players";
              };
              world_info = lib.mkOption {
                type = lib.types.str;
                default = "On {world.name}";
              };
              };
            };
          };
          presenceData = lib.mkOption {
            default = {};
            type = lib.types.submodule {
              options = {
              activityType = lib.mkOption {
                type = lib.types.int;
                default = 0;
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
              details = lib.mkOption {
                type = lib.types.str;
                default = "{menu.message}{dimension.message}";
              };
              enabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              endTimestamp = lib.mkOption {
                type = lib.types.str;
                default = "";
              };
              gameState = lib.mkOption {
                type = lib.types.str;
                default = "{server.message} {custom.pack}";
              };
              isInstance = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              largeImageKey = lib.mkOption {
                type = lib.types.str;
                default = "{menu.icon}{dimension.icon}";
              };
              largeImageText = lib.mkOption {
                type = lib.types.str;
                default = "{menu.message}{dimension.message}";
              };
              partyPrivacy = lib.mkOption {
                type = lib.types.int;
                default = 1;
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
              useAsMain = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              };
            };
          };
          };
        };
      };
      generalSettings = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          autoRegister = lib.mkOption {
            type = lib.types.bool;
            default = false;
          };
          clientId = lib.mkOption {
            type = lib.types.str;
            default = "1118980710187929681";
          };
          defaultIcon = lib.mkOption {
            type = lib.types.str;
            default = "gtnhlogoresized";
          };
          detectATLauncherInstance = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          detectBiomeData = lib.mkOption {
            type = lib.types.bool;
            default = false;
          };
          detectCurseManifest = lib.mkOption {
            type = lib.types.bool;
            default = false;
          };
          detectDimensionData = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          detectMCUpdaterInstance = lib.mkOption {
            type = lib.types.bool;
            default = false;
          };
          detectModrinthPack = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          detectMultiMCManifest = lib.mkOption {
            type = lib.types.bool;
            default = false;
          };
          detectTechnicPack = lib.mkOption {
            type = lib.types.bool;
            default = false;
          };
          detectWorldData = lib.mkOption {
            type = lib.types.bool;
            default = true;
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
          fallbackServerMotd = lib.mkOption {
            type = lib.types.str;
            default = "A Minecraft Server";
          };
          fallbackServerName = lib.mkOption {
            type = lib.types.str;
            default = "GT:NH Server";
          };
          pingRateInterval = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          pingRateUnit = lib.mkOption {
            type = lib.types.str;
            default = "minutes";
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
          };
        };
      };
      statusMessages = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
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
          };
        };
      };
      };
    };
  };
}
