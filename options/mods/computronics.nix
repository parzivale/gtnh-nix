{lib, ...}: {
  computronics = lib.mkOption {
    description = "computronics configuration (./config/computronics.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
          type = lib.types.str;
          default = "./config/computronics.cfg";
          readOnly = true;
        };
        kind = lib.mkOption {
          type = lib.types.str;
          default = "forge";
          readOnly = true;
        };
        camera = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              maxDistance = lib.mkOption {
                type = lib.types.int;
                default = 32;
                description = "The maximum camera distance, in blocks. [range: 16 ~ 256, default: 32]";
              };
            };
          };
        };
        chatbox = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              enableCreative = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable Creative Chat Boxes. [default: true]";
              };
              makeMagical = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Make the normal Chat Box have no range limit and work interdimensionally. [default: false]";
              };
              maxDistance = lib.mkOption {
                type = lib.types.int;
                default = 40;
                description = "The maximum chat box distance, in blocks. [range: 4 ~ 32767, default: 40]";
              };
              prefix = lib.mkOption {
                type = lib.types.str;
                default = "ChatBox";
                description = "The Chat Box's default prefix. [default: ChatBox]";
              };
            };
          };
        };
        cipherblock = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              canLock = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Decides whether Cipher Blocks can or cannot be locked. [default: true]";
              };
            };
          };
        };
        enable = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              audioCable = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              camera = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              chatBox = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              cipher = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              cipher_advanced = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              ironNoteBlock = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              lamp = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              portableTapeDrive = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              radar = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              speaker = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              speechBox = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              tape = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              opencomputers = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    beepCard = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    boomBoard = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    boomCard = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    cameraUpgrade = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    chatboxUpgrade = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    colorfulUpgrade = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    lightBoard = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    magicalMemory = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    noiseCard = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    particleCard = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    rackCapacitor = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    radarUpgrade = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    soundCard = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    speechUpgrade = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    spoofingCard = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    switchBoard = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                  };
                };
              };
              forestry = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    opencomputersBees = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Set this to false to disable Forestry bee species for OpenComputers [default: true]";
                    };
                  };
                };
              };
              buildcraft = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    droneDockingStation = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Set this to false to disable the Drone Docking Station for OpenComputers [default: true]";
                    };
                  };
                };
              };
              railcraft = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    digitalControllerBox = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    digitalDetector = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    digitalReceiverBox = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    locomotiveRelay = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    ticketMachine = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                  };
                };
              };
            };
          };
        };
        general = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              enableTickingRedstoneSupport = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set whether some machines should stop being tickless in exchange for redstone output support. [default: true]";
              };
            };
          };
        };
        gregtech = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              GregtechMachineCoordinates = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set this to false to disable the coordinates function for Gregtech machines [default: true]";
              };
            };
          };
        };
        modcompatibility = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              enableAE2SpatialIOComponent = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enableBuildCraftDrivers = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enableDraconicEvolutionEnergyStoragePeripheral = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enableEnderIOComponents = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enableGregTechDigitalChests = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enableGregTechMachines = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enableRailcraftRoutingComponents = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              enableStorageDrawersDriver = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        particles = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              particleRange = lib.mkOption {
                type = lib.types.int;
                default = 256;
                description = "The maximum range of particle-emitting devices. Set to -1 to make it work over any distance. [range: -1 ~ 65536, default: 256]";
              };
            };
          };
        };
        power = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              cipherEnergyStorage = lib.mkOption {
                type = lib.types.float;
                default = 16000.0;
                description = "How much energy the Advanced Chipher Block can store [range: 0.0 ~ 100000.0, default: 16000.0]";
              };
              cipherKeyConsumption = lib.mkOption {
                type = lib.types.float;
                default = 16000.0;
                description = "How much energy the Advanced Cipher Block should consume for creating a key set [range: 0.0 ~ 100000.0, default: 16000.0]";
              };
              cipherWorkConsumption = lib.mkOption {
                type = lib.types.float;
                default = 160.0;
                description = "How much base energy the Advanced Cipher Block should consume per encryption/decryption task. It will consume this value + 2*(number of characters in message) [range: 0.0 ~ 100000.0, default: 160.0]";
              };
              ocBeepCardCostPerSound = lib.mkOption {
                type = lib.types.float;
                default = 10.0;
                description = "How much energy a single beep will cost for 1 second [range: 0.0 ~ 10000.0, default: 10.0]";
              };
              ocBoomBoardMaintenanceCost = lib.mkOption {
                type = lib.types.float;
                default = 0.2;
                description = "How much energy will be consumed per tick to keep a Server Self-Destructor active. [range: 0.0 ~ 10000.0, default: 0.2]";
              };
              ocColorfulUpgradeColorChangeCost = lib.mkOption {
                type = lib.types.float;
                default = 2.0;
                description = "How much energy changing the color of the Colorful Upgrade will cost [range: 0.0 ~ 10000.0, default: 2.0]";
              };
              ocLightBoardColorChangeCost = lib.mkOption {
                type = lib.types.float;
                default = 2.0;
                description = "How much energy changing the color or state of a Light Board's light will cost [range: 0.0 ~ 10000.0, default: 2.0]";
              };
              ocLightBoardColorMaintenanceCost = lib.mkOption {
                type = lib.types.float;
                default = 0.2;
                description = "How much energy will be consumed per tick to keep a Light Board's light running. Note that this value is consumed for each active light on the board. [range: 0.0 ~ 10000.0, default: 0.2]";
              };
              ocParticleCardCostPerParticle = lib.mkOption {
                type = lib.types.float;
                default = 2.0;
                description = "How much energy 1 particle emission should take. Multiplied by the distance to the target. [range: 0.0 ~ 10000.0, default: 2.0]";
              };
              ocRackCapacitorCapacity = lib.mkOption {
                type = lib.types.float;
                default = 7500.0;
                description = "How much energy a Rack Capacitor can store. [range: 0.0 ~ 10000.0, default: 7500.0]";
              };
              ocSoundCardCostPerSecond = lib.mkOption {
                type = lib.types.float;
                default = 10.0;
                description = "How much energy the sound card will consume per second of processed sound. [range: 0.0 ~ 10000.0, default: 10.0]";
              };
              ocSpoofingCardCostPerMessage = lib.mkOption {
                type = lib.types.float;
                default = 2.0;
                description = "How much energy sending one spoofed message should take [range: 0.0 ~ 10000.0, default: 2.0]";
              };
              ocSwitchBoardMaintenanceCost = lib.mkOption {
                type = lib.types.float;
                default = 0.2;
                description = "How much energy will be consumed per tick to keep a Switch Board's switch active. Note that this value is consumed for each active switch on the board. [range: 0.0 ~ 10000.0, default: 0.2]";
              };
              radarCostPerBlock = lib.mkOption {
                type = lib.types.float;
                default = 50.0;
                description = "How much energy each 1-block distance takes by OpenComputers radars. [range: 0.0 ~ 10000.0, default: 50.0]";
              };
              railcraft = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    locomotiveRelayBasePower = lib.mkOption {
                      type = lib.types.float;
                      default = 20.0;
                      description = "How much base energy the Locomotive Relay consumes per operation [range: 0.0 ~ 10000.0, default: 20.0]";
                    };
                  };
                };
              };
            };
          };
        };
        radar = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              maxRange = lib.mkOption {
                type = lib.types.int;
                default = 8;
                description = "The maximum range of the Radar. [range: 0 ~ 256, default: 8]";
              };
              onlyOutputDistance = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Stop Radars from outputting X/Y/Z coordinates and instead only output the distance from an entity. [default: true]";
              };
            };
          };
        };
        railcraft = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              locomotiveRelayConsumeCharge = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If true, the Locomotive Relay will consumea little bit of Railcraft charge in the locomotive everytime it is accessing the locomotive [default: true]";
              };
              locomotiveRelayRange = lib.mkOption {
                type = lib.types.int;
                default = 128;
                description = "The range of Locomotive Relays in Blocks. [range: 0 ~ 512, default: 128]";
              };
              ticketMachineConsumeCharge = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "If true, the Ticket Machine willrequire a little bit of RF to print tickets [default: true]";
              };
            };
          };
        };
        recipes = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              easyRecipeMode = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Set this to true to make some recipes not require OpenComputers blocks and items [default: false]";
              };
              gtRecipeMode = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set this to true to enable GregTech-style recipes [default: true]";
              };
            };
          };
        };
        sound = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              ocSoundCardChannelCount = lib.mkOption {
                type = lib.types.int;
                default = 8;
                description = "The number of audio channels each sound card has. [range: 1 ~ 65536, default: 8]";
              };
              ocSoundCardMaxDelay = lib.mkOption {
                type = lib.types.int;
                default = 5000;
                description = "Maximum delay allowed in a sound card's instruction queue, in milliseconds [range: 0 ~ 2147483647, default: 5000]";
              };
              ocSoundCardQueueSize = lib.mkOption {
                type = lib.types.int;
                default = 1024;
                description = "Maximum  number of instructons allowed in a sound cards instruction queue. This directly affects the maximum size of the packets sent to the client. [range: 0 ~ 2147483647, default: 1024]";
              };
              client = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    soundRadius = lib.mkOption {
                      type = lib.types.int;
                      default = 24;
                      description = "The radius in which generated sounds can be heard. [range: 0 ~ 64, default: 24]";
                    };
                    soundSampleRate = lib.mkOption {
                      type = lib.types.int;
                      default = 44100;
                      description = "The sample rate used for generating sounds. Modify at your own risk. [range: 0 ~ 2147483647, default: 44100]";
                    };
                    soundVolume = lib.mkOption {
                      type = lib.types.int;
                      default = 64;
                      description = "The base volume of generated sounds. [range: 0 ~ 127, default: 127]";
                    };
                  };
                };
              };
            };
          };
        };
        tapedrive = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              audioPreloadMs = lib.mkOption {
                type = lib.types.int;
                default = 750;
                description = "The amount of time (in milliseconds) used for pre-buffering the tape for audio playback. If you get audio playback glitches in SMP/your TPS is under 20, RAISE THIS VALUE! [range: 500 ~ 10000, default: 750]";
              };
              hearingDistance = lib.mkOption {
                type = lib.types.int;
                default = 24;
                description = "The distance up to which Tape Drives can be heard. [range: 0 ~ 64, default: 24]";
              };
              tapeLengths = lib.mkOption {
                type = lib.types.str;
                default = "4,8,16,32,64,2,6,16,128,128";
                description = "The lengths of the computronics tapes. Should be 10 numbers separated by commas [default: 4,8,16,32,64,2,6,16,128,128]";
              };
              portable = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    hearingDistance = lib.mkOption {
                      type = lib.types.int;
                      default = 8;
                      description = "The distance up to which Portable Tape Drives can be heard. [range: 0 ~ 64, default: 8]";
                    };
                  };
                };
              };
            };
          };
        };
        tts = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              enableTextToSpeech = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enable Text To Speech. To use it, install MaryTTS, a language and a corresponding voice into the marytts directory of your minecraft instance. For installation instructions, see http://wiki.vex.tty.sh/wiki:computronics:mary [default: true]";
              };
              maxPhraseLength = lib.mkOption {
                type = lib.types.int;
                default = 300;
                description = "The maximum number of text bytes the speech box can process at a time. [range: 0 ~ 100000, default: 300]";
              };
            };
          };
        };
      };
    };
  };
}
