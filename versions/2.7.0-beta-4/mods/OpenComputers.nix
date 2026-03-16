{lib, ...}: {
  OpenComputers_cfg = lib.mkOption {
    description = "OpenComputers_cfg configuration (./config/OpenComputers.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/OpenComputers.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "hocon";
        readOnly = true;
        };
        opencomputers = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              client = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    beepRadius = lib.mkOption {
                      type = lib.types.int;
                      default = 16;
                    };
                    beepSampleRate = lib.mkOption {
                      type = lib.types.int;
                      default = 44100;
                    };
                    beepVolume = lib.mkOption {
                      type = lib.types.int;
                      default = 32;
                    };
                    enableNanomachinePfx = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    fontCharScale = lib.mkOption {
                      type = lib.types.float;
                      default = 1.01;
                    };
                    fontRenderer = lib.mkOption {
                      type = lib.types.str;
                      default = "unifont";
                    };
                    hologramFadeStartDistance = lib.mkOption {
                      type = lib.types.int;
                      default = 48;
                    };
                    hologramFlickerFrequency = lib.mkOption {
                      type = lib.types.float;
                      default = 0.025;
                    };
                    hologramRenderDistance = lib.mkOption {
                      type = lib.types.int;
                      default = 64;
                    };
                    maxScreenTextRenderDistance = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    monochromeColor = lib.mkOption {
                      type = lib.types.str;
                      default = "0xFFFFFF";
                    };
                    nanomachineHudPos = lib.mkOption {
                      type = lib.types.listOf lib.types.int;
                      default = [ (-1) (-1) ];
                    };
                    robotLabels = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    screenTextFadeStartDistance = lib.mkOption {
                      type = lib.types.int;
                      default = 15;
                    };
                    soundVolume = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    textAntiAlias = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    textLinearFiltering = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                    };
                  };
                };
              };
              computer = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    callBudgets = lib.mkOption {
                      type = lib.types.listOf lib.types.float;
                      default = [ 0.5 1.0 1.5 ];
                    };
                    canComputersBeOwned = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    cpuComponentCount = lib.mkOption {
                      type = lib.types.listOf lib.types.int;
                      default = [ 8 12 16 1024 ];
                    };
                    eepromDataSize = lib.mkOption {
                      type = lib.types.int;
                      default = 256;
                    };
                    eepromSize = lib.mkOption {
                      type = lib.types.int;
                      default = 4096;
                    };
                    eraseTmpOnReboot = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                    };
                    executionDelay = lib.mkOption {
                      type = lib.types.int;
                      default = 12;
                    };
                    lua = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          allowBytecode = lib.mkOption {
                            type = lib.types.bool;
                            default = false;
                          };
                          allowGC = lib.mkOption {
                            type = lib.types.bool;
                            default = false;
                          };
                          defaultLua53 = lib.mkOption {
                            type = lib.types.bool;
                            default = false;
                          };
                          enableLua53 = lib.mkOption {
                            type = lib.types.bool;
                            default = true;
                          };
                          maxTotalRam = lib.mkOption {
                            type = lib.types.int;
                            default = 67108864;
                          };
                          ramScaleFor64Bit = lib.mkOption {
                            type = lib.types.float;
                            default = 1.8;
                          };
                          ramSizes = lib.mkOption {
                            type = lib.types.listOf lib.types.int;
                            default = [ 192 256 384 512 768 1024 ];
                          };
                        };
                      };
                    };
                    maxUsernameLength = lib.mkOption {
                      type = lib.types.int;
                      default = 32;
                    };
                    maxUsers = lib.mkOption {
                      type = lib.types.int;
                      default = 16;
                    };
                    startupDelay = lib.mkOption {
                      type = lib.types.float;
                      default = 0.25;
                    };
                    threads = lib.mkOption {
                      type = lib.types.int;
                      default = 4;
                    };
                    timeout = lib.mkOption {
                      type = lib.types.int;
                      default = 5;
                    };
                  };
                };
              };
              debug = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    alwaysTryNative = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                    };
                    debugCardAccess = lib.mkOption {
                      type = lib.types.str;
                      default = "allow";
                    };
                    disableLocaleChanging = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                    };
                    disableMemoryLimit = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                    };
                    disablePersistence = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                    };
                    disableUserdata = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                    };
                    enableDebugCard = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    forceCaseInsensitiveFS = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                    };
                    forceLuaJ = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                    };
                    forceNativeLibWithName = lib.mkOption {
                      type = lib.types.str;
                      default = "";
                    };
                    insertIdsInConverters = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                    };
                    logCallbackErrors = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                    };
                    logFullNativeLibLoadErrors = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                    };
                    logHexFontErrors = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                    };
                    logOpenGLErrors = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                    };
                    logUnifontErrors = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                    };
                    nativeInTmpDir = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                    };
                    periodicallyForceLightUpdate = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                    };
                    registerLuaJArchitecture = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                    };
                    verbosePersistenceErrors = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                    };
                  };
                };
              };
              filesystem = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    bufferChanges = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                    };
                    fileCost = lib.mkOption {
                      type = lib.types.int;
                      default = 512;
                    };
                    floppySize = lib.mkOption {
                      type = lib.types.int;
                      default = 512;
                    };
                    hddPlatterCounts = lib.mkOption {
                      type = lib.types.listOf lib.types.int;
                      default = [ 2 4 6 ];
                    };
                    hddSizes = lib.mkOption {
                      type = lib.types.listOf lib.types.int;
                      default = [ 1024 2048 4096 ];
                    };
                    maxHandles = lib.mkOption {
                      type = lib.types.int;
                      default = 16;
                    };
                    maxReadBuffer = lib.mkOption {
                      type = lib.types.int;
                      default = 2048;
                    };
                    sectorSeekThreshold = lib.mkOption {
                      type = lib.types.int;
                      default = 128;
                    };
                    sectorSeekTime = lib.mkOption {
                      type = lib.types.float;
                      default = 0.1;
                    };
                    tmpSize = lib.mkOption {
                      type = lib.types.int;
                      default = 64;
                    };
                  };
                };
              };
              hologram = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    emitLight = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    maxScale = lib.mkOption {
                      type = lib.types.listOf lib.types.int;
                      default = [ 3 4 ];
                    };
                    maxTranslation = lib.mkOption {
                      type = lib.types.listOf lib.types.float;
                      default = [ 0.25 0.5 ];
                    };
                    setRawDelay = lib.mkOption {
                      type = lib.types.float;
                      default = 0.2;
                    };
                  };
                };
              };
              integration = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    buildcraft = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          programmingTableCost = lib.mkOption {
                            type = lib.types.int;
                            default = 5000;
                          };
                        };
                      };
                    };
                    fakePlayerName = lib.mkOption {
                      type = lib.types.str;
                      default = "[OpenComputers]";
                    };
                    fakePlayerUuid = lib.mkOption {
                      type = lib.types.str;
                      default = "7e506b5d-2ccb-4ac4-a249-5624925b0c67";
                    };
                    modBlacklist = lib.mkOption {
                      type = lib.types.listOf lib.types.str;
                      default = [ ];
                    };
                    peripheralBlacklist = lib.mkOption {
                      type = lib.types.listOf lib.types.str;
                      default = [ "net.minecraft.tileentity.TileEntityCommandBlock" ];
                    };
                    vanilla = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          allowItemStackNBTTags = lib.mkOption {
                            type = lib.types.bool;
                            default = true;
                          };
                          enableCommandBlockDriver = lib.mkOption {
                            type = lib.types.bool;
                            default = false;
                          };
                          enableInventoryDriver = lib.mkOption {
                            type = lib.types.bool;
                            default = false;
                          };
                          enableTankDriver = lib.mkOption {
                            type = lib.types.bool;
                            default = false;
                          };
                        };
                      };
                    };
                  };
                };
              };
              internet = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    blacklist = lib.mkOption {
                      type = lib.types.listOf lib.types.str;
                      default = [ "127.0.0.0/8" "10.0.0.0/8" "192.168.0.0/16" "172.16.0.0/12" ];
                    };
                    enableHttp = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    enableHttpHeaders = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    enableTcp = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    maxTcpConnections = lib.mkOption {
                      type = lib.types.int;
                      default = 4;
                    };
                    requestTimeout = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    threads = lib.mkOption {
                      type = lib.types.int;
                      default = 4;
                    };
                    whitelist = lib.mkOption {
                      type = lib.types.listOf lib.types.str;
                      default = [ ];
                    };
                  };
                };
              };
              misc = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    allowItemStackInspection = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    assemblerBlacklist = lib.mkOption {
                      type = lib.types.listOf lib.types.str;
                      default = [ ];
                    };
                    dataCardHardLimit = lib.mkOption {
                      type = lib.types.int;
                      default = 1048576;
                    };
                    dataCardSoftLimit = lib.mkOption {
                      type = lib.types.int;
                      default = 8192;
                    };
                    dataCardTimeout = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    disassembleAllTheThings = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                    };
                    disassemblerBreakChance = lib.mkOption {
                      type = lib.types.float;
                      default = 0.05;
                    };
                    disassemblerInputBlacklist = lib.mkOption {
                      type = lib.types.listOf lib.types.str;
                      default = [ "minecraft:fire" ];
                    };
                    geolyzerNoise = lib.mkOption {
                      type = lib.types.int;
                      default = 2;
                    };
                    geolyzerRange = lib.mkOption {
                      type = lib.types.int;
                      default = 32;
                    };
                    giveManualToNewPlayers = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                    };
                    hideOwnSpecial = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                    };
                    inputUsername = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    lootProbability = lib.mkOption {
                      type = lib.types.int;
                      default = 5;
                    };
                    lootRecrafting = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    maxClipboard = lib.mkOption {
                      type = lib.types.int;
                      default = 1024;
                    };
                    maxNetworkPacketParts = lib.mkOption {
                      type = lib.types.int;
                      default = 8;
                    };
                    maxNetworkPacketSize = lib.mkOption {
                      type = lib.types.int;
                      default = 8192;
                    };
                    maxOpenPorts = lib.mkOption {
                      type = lib.types.listOf lib.types.int;
                      default = [ 16 1 16 ];
                    };
                    maxScreenHeight = lib.mkOption {
                      type = lib.types.int;
                      default = 6;
                    };
                    maxScreenWidth = lib.mkOption {
                      type = lib.types.int;
                      default = 8;
                    };
                    maxWirelessRange = lib.mkOption {
                      type = lib.types.listOf lib.types.int;
                      default = [ 16 400 ];
                    };
                    mfuRange = lib.mkOption {
                      type = lib.types.int;
                      default = 16;
                    };
                    presentChance = lib.mkOption {
                      type = lib.types.float;
                      default = 0.05;
                    };
                    redstoneDelay = lib.mkOption {
                      type = lib.types.float;
                      default = 0.1;
                    };
                    serverRackSwitchTier = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    terminalsPerTier = lib.mkOption {
                      type = lib.types.listOf lib.types.int;
                      default = [ 2 4 8 ];
                    };
                    threadPriority = lib.mkOption {
                      type = lib.types.int;
                      default = -1;
                    };
                    tradingRange = lib.mkOption {
                      type = lib.types.int;
                      default = 8;
                    };
                    transposerFluidTransferRate = lib.mkOption {
                      type = lib.types.int;
                      default = 512000;
                    };
                    updateCheck = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                    };
                  };
                };
              };
              nanomachines = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    commandDelay = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    commandRange = lib.mkOption {
                      type = lib.types.int;
                      default = 2;
                    };
                    connectorQuota = lib.mkOption {
                      type = lib.types.float;
                      default = 0.2;
                    };
                    disintegrationRange = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    hungryDamage = lib.mkOption {
                      type = lib.types.int;
                      default = 5;
                    };
                    hungryEnergyRestored = lib.mkOption {
                      type = lib.types.int;
                      default = 50;
                    };
                    magnetRange = lib.mkOption {
                      type = lib.types.int;
                      default = 8;
                    };
                    maxInputs = lib.mkOption {
                      type = lib.types.int;
                      default = 2;
                    };
                    maxInputsActive = lib.mkOption {
                      type = lib.types.int;
                      default = 4;
                    };
                    maxOutputs = lib.mkOption {
                      type = lib.types.int;
                      default = 2;
                    };
                    potionWhitelist = lib.mkOption {
                      type = lib.types.listOf lib.types.str;
                      default = [ "potion.moveSpeed" "potion.digSpeed" "potion.damageBoost" "potion.jump" "potion.resistance" "potion.fireResistance" "potion.waterBreathing" "potion.nightVision" "potion.absorption" "potion.blindness" "potion.confusion" "potion.digSlowDown" "potion.harm" "potion.hunger" "potion.moveSlowdown" "potion.poison" "potion.weakness" "potion.wither" ];
                    };
                    safeInputsActive = lib.mkOption {
                      type = lib.types.int;
                      default = 2;
                    };
                    triggerQuota = lib.mkOption {
                      type = lib.types.float;
                      default = 0.4;
                    };
                  };
                };
              };
              power = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    assemblerTickAmount = lib.mkOption {
                      type = lib.types.int;
                      default = 50;
                    };
                    buffer = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          accessPoint = lib.mkOption {
                            type = lib.types.int;
                            default = 600;
                          };
                          batteryUpgrades = lib.mkOption {
                            type = lib.types.listOf lib.types.int;
                            default = [ 10000 15000 20000 ];
                          };
                          capacitor = lib.mkOption {
                            type = lib.types.int;
                            default = 1600;
                          };
                          capacitorAdjacencyBonus = lib.mkOption {
                            type = lib.types.int;
                            default = 800;
                          };
                          computer = lib.mkOption {
                            type = lib.types.int;
                            default = 500;
                          };
                          converter = lib.mkOption {
                            type = lib.types.int;
                            default = 1000;
                          };
                          distributor = lib.mkOption {
                            type = lib.types.int;
                            default = 500;
                          };
                          drone = lib.mkOption {
                            type = lib.types.int;
                            default = 5000;
                          };
                          hoverBoots = lib.mkOption {
                            type = lib.types.int;
                            default = 15000;
                          };
                          mcu = lib.mkOption {
                            type = lib.types.int;
                            default = 1000;
                          };
                          nanomachines = lib.mkOption {
                            type = lib.types.int;
                            default = 100000;
                          };
                          robot = lib.mkOption {
                            type = lib.types.int;
                            default = 20000;
                          };
                          tablet = lib.mkOption {
                            type = lib.types.int;
                            default = 10000;
                          };
                        };
                      };
                    };
                    carpetedCapacitors = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          damageChance = lib.mkOption {
                            type = lib.types.float;
                            default = 0.001;
                          };
                          ocelotPower = lib.mkOption {
                            type = lib.types.int;
                            default = 6;
                          };
                          sheepPower = lib.mkOption {
                            type = lib.types.int;
                            default = 3;
                          };
                        };
                      };
                    };
                    chargerChargeRate = lib.mkOption {
                      type = lib.types.int;
                      default = 100;
                    };
                    chargerChargeRateTablet = lib.mkOption {
                      type = lib.types.int;
                      default = 10;
                    };
                    cost = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          abstractBusPacket = lib.mkOption {
                            type = lib.types.int;
                            default = 1;
                          };
                          chunkloaderCost = lib.mkOption {
                            type = lib.types.float;
                            default = 0.06;
                          };
                          computer = lib.mkOption {
                            type = lib.types.float;
                            default = 0.5;
                          };
                          dataCardAsymmetric = lib.mkOption {
                            type = lib.types.int;
                            default = 10;
                          };
                          dataCardComplex = lib.mkOption {
                            type = lib.types.int;
                            default = 6;
                          };
                          dataCardComplexByte = lib.mkOption {
                            type = lib.types.float;
                            default = 0.1;
                          };
                          dataCardSimple = lib.mkOption {
                            type = lib.types.int;
                            default = 1;
                          };
                          dataCardSimpleByte = lib.mkOption {
                            type = lib.types.float;
                            default = 0.01;
                          };
                          dataCardTrivial = lib.mkOption {
                            type = lib.types.float;
                            default = 0.2;
                          };
                          dataCardTrivialByte = lib.mkOption {
                            type = lib.types.float;
                            default = 0.005;
                          };
                          disassemblerPerItem = lib.mkOption {
                            type = lib.types.int;
                            default = 2000;
                          };
                          drone = lib.mkOption {
                            type = lib.types.float;
                            default = 0.4;
                          };
                          droneAssemblyBase = lib.mkOption {
                            type = lib.types.int;
                            default = 25000;
                          };
                          droneAssemblyComplexity = lib.mkOption {
                            type = lib.types.int;
                            default = 15000;
                          };
                          eepromWrite = lib.mkOption {
                            type = lib.types.int;
                            default = 50;
                          };
                          geolyzerScan = lib.mkOption {
                            type = lib.types.int;
                            default = 10;
                          };
                          gpuClear = lib.mkOption {
                            type = lib.types.float;
                            default = 0.1;
                          };
                          gpuCopy = lib.mkOption {
                            type = lib.types.float;
                            default = 0.25;
                          };
                          gpuFill = lib.mkOption {
                            type = lib.types.int;
                            default = 1;
                          };
                          gpuSet = lib.mkOption {
                            type = lib.types.int;
                            default = 2;
                          };
                          hddRead = lib.mkOption {
                            type = lib.types.float;
                            default = 0.1;
                          };
                          hddWrite = lib.mkOption {
                            type = lib.types.float;
                            default = 0.25;
                          };
                          hologram = lib.mkOption {
                            type = lib.types.float;
                            default = 0.2;
                          };
                          hoverBootAbsorb = lib.mkOption {
                            type = lib.types.int;
                            default = 10;
                          };
                          hoverBootJump = lib.mkOption {
                            type = lib.types.int;
                            default = 10;
                          };
                          hoverBootMove = lib.mkOption {
                            type = lib.types.int;
                            default = 1;
                          };
                          mfuRelay = lib.mkOption {
                            type = lib.types.int;
                            default = 1;
                          };
                          microcontroller = lib.mkOption {
                            type = lib.types.float;
                            default = 0.1;
                          };
                          microcontrollerAssemblyBase = lib.mkOption {
                            type = lib.types.int;
                            default = 10000;
                          };
                          microcontrollerAssemblyComplexity = lib.mkOption {
                            type = lib.types.int;
                            default = 10000;
                          };
                          nanomachineInput = lib.mkOption {
                            type = lib.types.float;
                            default = 0.5;
                          };
                          nanomachinesReconfigure = lib.mkOption {
                            type = lib.types.int;
                            default = 5000;
                          };
                          pistonPush = lib.mkOption {
                            type = lib.types.int;
                            default = 20;
                          };
                          printerModel = lib.mkOption {
                            type = lib.types.int;
                            default = 100;
                          };
                          robot = lib.mkOption {
                            type = lib.types.float;
                            default = 0.25;
                          };
                          robotAssemblyBase = lib.mkOption {
                            type = lib.types.int;
                            default = 50000;
                          };
                          robotAssemblyComplexity = lib.mkOption {
                            type = lib.types.int;
                            default = 10000;
                          };
                          robotExhaustion = lib.mkOption {
                            type = lib.types.int;
                            default = 10;
                          };
                          robotMove = lib.mkOption {
                            type = lib.types.int;
                            default = 15;
                          };
                          robotTurn = lib.mkOption {
                            type = lib.types.float;
                            default = 2.5;
                          };
                          screen = lib.mkOption {
                            type = lib.types.float;
                            default = 0.05;
                          };
                          sleepFactor = lib.mkOption {
                            type = lib.types.float;
                            default = 0.1;
                          };
                          tabletAssemblyBase = lib.mkOption {
                            type = lib.types.int;
                            default = 20000;
                          };
                          tabletAssemblyComplexity = lib.mkOption {
                            type = lib.types.int;
                            default = 5000;
                          };
                          transposer = lib.mkOption {
                            type = lib.types.int;
                            default = 1;
                          };
                          wirelessCostPerRange = lib.mkOption {
                            type = lib.types.listOf lib.types.float;
                            default = [ 0.05 0.05 ];
                          };
                        };
                      };
                    };
                    disassemblerTickAmount = lib.mkOption {
                      type = lib.types.int;
                      default = 25;
                    };
                    generatorEfficiency = lib.mkOption {
                      type = lib.types.float;
                      default = 0.8;
                    };
                    ignorePower = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                    };
                    modBlacklist = lib.mkOption {
                      type = lib.types.listOf lib.types.str;
                      default = [ ];
                    };
                    printerTickAmount = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    rate = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          accessPoint = lib.mkOption {
                            type = lib.types.int;
                            default = 10;
                          };
                          assembler = lib.mkOption {
                            type = lib.types.int;
                            default = 100;
                          };
                          case = lib.mkOption {
                            type = lib.types.listOf lib.types.int;
                            default = [ 5 10 20 ];
                          };
                          charger = lib.mkOption {
                            type = lib.types.int;
                            default = 200;
                          };
                          disassembler = lib.mkOption {
                            type = lib.types.int;
                            default = 50;
                          };
                          powerConverter = lib.mkOption {
                            type = lib.types.int;
                            default = 500;
                          };
                          serverRack = lib.mkOption {
                            type = lib.types.int;
                            default = 50;
                          };
                        };
                      };
                    };
                    solarGeneratorEfficiency = lib.mkOption {
                      type = lib.types.float;
                      default = 0.2;
                    };
                    ritegEfficiency = lib.mkOption {
                      type = lib.types.float;
                      default = 0.6;
                    };
                    tickFrequency = lib.mkOption {
                      type = lib.types.int;
                      default = 10;
                    };
                    value = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          AppliedEnergistics2 = lib.mkOption {
                            type = lib.types.int;
                            default = 200;
                          };
                          Factorization = lib.mkOption {
                            type = lib.types.int;
                            default = 13;
                          };
                          Galacticraft = lib.mkOption {
                            type = lib.types.int;
                            default = 48;
                          };
                          IndustrialCraft2 = lib.mkOption {
                            type = lib.types.int;
                            default = 400;
                          };
                          Mekanism = lib.mkOption {
                            type = lib.types.float;
                            default = 1333.33;
                          };
                          RedstoneFlux = lib.mkOption {
                            type = lib.types.int;
                            default = 100;
                          };
                          RotaryCraft = lib.mkOption {
                            type = lib.types.int;
                            default = 200;
                          };
                        };
                      };
                    };
                  };
                };
              };
              printer = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    chameliumEdible = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    customRedstoneCost = lib.mkOption {
                      type = lib.types.int;
                      default = 300;
                    };
                    inkValue = lib.mkOption {
                      type = lib.types.int;
                      default = 50000;
                    };
                    materialValue = lib.mkOption {
                      type = lib.types.int;
                      default = 2000;
                    };
                    maxBaseLightLevel = lib.mkOption {
                      type = lib.types.int;
                      default = 8;
                    };
                    maxShapes = lib.mkOption {
                      type = lib.types.int;
                      default = 256;
                    };
                    noclipMultiplier = lib.mkOption {
                      type = lib.types.int;
                      default = 2;
                    };
                    printsHaveOpacity = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                    };
                    recycleRate = lib.mkOption {
                      type = lib.types.float;
                      default = 0.75;
                    };
                  };
                };
              };
              robot = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    allowActivateBlocks = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    allowUseItemsWithDuration = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    canAttackPlayers = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                    };
                    delays = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          drop = lib.mkOption {
                            type = lib.types.float;
                            default = 0.5;
                          };
                          harvestRatio = lib.mkOption {
                            type = lib.types.int;
                            default = 1;
                          };
                          move = lib.mkOption {
                            type = lib.types.float;
                            default = 0.4;
                          };
                          place = lib.mkOption {
                            type = lib.types.float;
                            default = 0.4;
                          };
                          suck = lib.mkOption {
                            type = lib.types.float;
                            default = 0.5;
                          };
                          swing = lib.mkOption {
                            type = lib.types.float;
                            default = 0.4;
                          };
                          turn = lib.mkOption {
                            type = lib.types.float;
                            default = 0.4;
                          };
                          use = lib.mkOption {
                            type = lib.types.float;
                            default = 0.4;
                          };
                        };
                      };
                    };
                    itemDamageRate = lib.mkOption {
                      type = lib.types.float;
                      default = 0.1;
                    };
                    limitFlightHeight = lib.mkOption {
                      type = lib.types.int;
                      default = 8;
                    };
                    nameFormat = lib.mkOption {
                      type = lib.types.str;
                      default = "$player$.robot";
                    };
                    notAfraidOfSpiders = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    swingRange = lib.mkOption {
                      type = lib.types.float;
                      default = 0.49;
                    };
                    upgradeFlightHeight = lib.mkOption {
                      type = lib.types.listOf lib.types.int;
                      default = [ 64 256 ];
                    };
                    useAndPlaceRange = lib.mkOption {
                      type = lib.types.float;
                      default = 0.65;
                    };
                    uuidFormat = lib.mkOption {
                      type = lib.types.str;
                      default = "$player$";
                    };
                    xp = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          actionXp = lib.mkOption {
                            type = lib.types.float;
                            default = 0.05;
                          };
                          baseValue = lib.mkOption {
                            type = lib.types.int;
                            default = 50;
                          };
                          bufferPerLevel = lib.mkOption {
                            type = lib.types.int;
                            default = 5000;
                          };
                          constantGrowth = lib.mkOption {
                            type = lib.types.int;
                            default = 8;
                          };
                          exhaustionXpRate = lib.mkOption {
                            type = lib.types.int;
                            default = 1;
                          };
                          exponentialGrowth = lib.mkOption {
                            type = lib.types.int;
                            default = 2;
                          };
                          harvestSpeedBoostPerLevel = lib.mkOption {
                            type = lib.types.float;
                            default = 0.02;
                          };
                          oreXpRate = lib.mkOption {
                            type = lib.types.int;
                            default = 4;
                          };
                          toolEfficiencyPerLevel = lib.mkOption {
                            type = lib.types.float;
                            default = 0.01;
                          };
                        };
                      };
                    };
                  };
                };
              };
              switch = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    defaultMaxQueueSize = lib.mkOption {
                      type = lib.types.int;
                      default = 20;
                    };
                    defaultRelayAmount = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    defaultRelayDelay = lib.mkOption {
                      type = lib.types.int;
                      default = 5;
                    };
                    queueSizeUpgrade = lib.mkOption {
                      type = lib.types.int;
                      default = 10;
                    };
                    relayAmountUpgrade = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    relayDelayUpgrade = lib.mkOption {
                      type = lib.types.float;
                      default = 1.5;
                    };
                  };
                };
              };
              version = lib.mkOption {
                type = lib.types.str;
                default = "1.7.2.1166";
              };
            };
          };
        };
      };
    };
  };
}
