{lib, ...}: {
  OpenComputers = lib.mkOption {
    description = "OpenComputers configuration (./config/OpenComputers.cfg)";
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
        default = "forge";
        readOnly = true;
        };
        opencomputers = lib.mkOption {
          default = {};
          description = "Note that all mentions of 'KB' or 'kilobyte' mean 1024 bytes.";
          type = lib.types.submodule {
            options = {
              chunkloader = lib.mkOption {
                default = {};
                description = "Chunkloader Upgrade settings.";
                type = lib.types.submodule {
                  options = {
                    dimBlacklist = lib.mkOption {
                      type = lib.types.str;
                      default = "[]";
                      description = "this list.";
                    };
                    dimWhitelist = lib.mkOption {
                      type = lib.types.str;
                      default = "[]";
                      description = "blacklist will win.";
                    };
                  };
                };
              };
              client = lib.mkOption {
                default = {};
                description = "Client side settings, presentation and performance related stuff.";
                type = lib.types.submodule {
                  options = {
                    beepRadius = lib.mkOption {
                      type = lib.types.str;
                      default = "16";
                      description = "The radius in which computer beeps can be heard.";
                    };
                    beepSampleRate = lib.mkOption {
                      type = lib.types.str;
                      default = "44100";
                      description = "leads to artifacting on certain frequencies).";
                    };
                    beepVolume = lib.mkOption {
                      type = lib.types.str;
                      default = "32";
                      description = "generated), and 127 means maximum amplitude / volume.";
                    };
                    enableNanomachinePfx = lib.mkOption {
                      type = lib.types.str;
                      default = "true";
                      description = "particle effect behaviors.";
                    };
                    fontCharScale = lib.mkOption {
                      type = lib.types.str;
                      default = "1.01";
                      description = "blinking for example) on less accurate hardware.";
                    };
                    fontRenderer = lib.mkOption {
                      type = lib.types.str;
                      default = "unifont";
                      description = "a *lot* of unicode).";
                    };
                    hologramFadeStartDistance = lib.mkOption {
                      type = lib.types.str;
                      default = "48";
                      description = "It does not affect performance. Holograms are transparent anyway.";
                    };
                    hologramFlickerFrequency = lib.mkOption {
                      type = lib.types.str;
                      default = "0.025";
                      description = "may want to lower this a bit, to avoid it flickering too much.";
                    };
                    hologramRenderDistance = lib.mkOption {
                      type = lib.types.str;
                      default = "64";
                      description = "down with the actual scale of the hologram.";
                    };
                    maxScreenTextRenderDistance = lib.mkOption {
                      type = lib.types.str;
                      default = "20";
                      description = "only has an impact on render performance on clients.";
                    };
                    monochromeColor = lib.mkOption {
                      type = lib.types.str;
                      default = "\"0xFFFFFF\"";
                      description = "Defaults to white, feel free to make it some other color, tho!";
                    };
                    nanomachineHudPos = lib.mkOption {
                      type = lib.types.str;
                      default = "[";
                      description = "absolute positions.";
                    };
                    robotLabels = lib.mkOption {
                      type = lib.types.str;
                      default = "true";
                      description = "Render robots' names as a label above them when near them";
                    };
                    screenTextFadeStartDistance = lib.mkOption {
                      type = lib.types.str;
                      default = "15";
                      description = "displaying it.";
                    };
                    soundVolume = lib.mkOption {
                      type = lib.types.str;
                      default = "1";
                      description = "running noise. Disable sounds by setting this to zero.";
                    };
                    textAntiAlias = lib.mkOption {
                      type = lib.types.str;
                      default = "true";
                      description = "anti-aliased / smoothed) turn this option off.";
                    };
                    textLinearFiltering = lib.mkOption {
                      type = lib.types.str;
                      default = "false";
                      description = "Wikipedia.)";
                    };
                  };
                };
              };
              computer = lib.mkOption {
                default = {};
                description = "Computer related settings, concerns server performance and security.";
                type = lib.types.submodule {
                  options = {
                    callBudgets = lib.mkOption {
                      type = lib.types.str;
                      default = "[";
                      description = "contain exactly three entries, or it will be ignored.";
                    };
                    canComputersBeOwned = lib.mkOption {
                      type = lib.types.str;
                      default = "true";
                      description = "See also: `maxUsers` and `maxUsernameLength`.";
                    };
                    cpuComponentCount = lib.mkOption {
                      type = lib.types.str;
                      default = "[";
                      description = "must contain exactly four entries, or it will be ignored.";
                    };
                    eepromDataSize = lib.mkOption {
                      type = lib.types.str;
                      default = "256";
                      description = "The maximum size of the byte array that can be stored on EEPROMs as configuration data.";
                    };
                    eepromSize = lib.mkOption {
                      type = lib.types.str;
                      default = "4096";
                      description = "The maximum size of the byte array that can be stored on EEPROMs as executable data..";
                    };
                    eraseTmpOnReboot = lib.mkOption {
                      type = lib.types.str;
                      default = "false";
                      description = "it crashed. This setting is purely for software-triggered reboots.";
                    };
                    executionDelay = lib.mkOption {
                      type = lib.types.str;
                      default = "12";
                      description = "never exceed 50, a single tick, though) to reduce CPU load even more.";
                    };
                    lua = lib.mkOption {
                      default = {};
                      description = "Settings specific to the Lua architecture.";
                      type = lib.types.submodule {
                        options = {
                          allowBytecode = lib.mkOption {
                            type = lib.types.str;
                            default = "false";
                            description = "know what you're doing.";
                          };
                          allowGC = lib.mkOption {
                            type = lib.types.str;
                            default = "false";
                            description = "recommended.";
                          };
                          defaultLua53 = lib.mkOption {
                            type = lib.types.str;
                            default = "false";
                            description = "If enabled, a crafted CPU will first be the Lua 5.3 architecture.";
                          };
                          enableLua53 = lib.mkOption {
                            type = lib.types.str;
                            default = "true";
                            description = "can reconfigure any CPU to use the Lua 5.3 architecture.";
                          };
                          enableLua54 = lib.mkOption {
                            type = lib.types.str;
                            default = "false";
                            description = "can reconfigure any CPU to use the Lua 5.4 architecture.";
                          };
                          maxTotalRam = lib.mkOption {
                            type = lib.types.str;
                            default = "67108864";
                            description = "IN PARTICULAR, DO NOT REPORT ISSUES AFTER MESSING WITH THIS!";
                          };
                          ramScaleFor64Bit = lib.mkOption {
                            type = lib.types.str;
                            default = "1.8";
                            description = "are really 45KB free, `computer.freeMemory` will return 32KB.";
                          };
                          ramSizes = lib.mkOption {
                            type = lib.types.str;
                            default = "[";
                            description = "items (level 1, 2 = tier 1, level 3, 4 = tier 2, level 5, 6 = tier 3).";
                          };
                        };
                      };
                    };
                    maxSignalQueueSize = lib.mkOption {
                      type = lib.types.str;
                      default = "256";
                      description = "text of this many lines. The default (and minimum) is 256";
                    };
                    maxUsernameLength = lib.mkOption {
                      type = lib.types.str;
                      default = "32";
                      description = "See also: `canComputersBeOwned`.";
                    };
                    maxUsers = lib.mkOption {
                      type = lib.types.str;
                      default = "16";
                      description = "`canComputersBeOwned`.";
                    };
                    startupDelay = lib.mkOption {
                      type = lib.types.str;
                      default = "0.25";
                      description = "happen.";
                    };
                    threads = lib.mkOption {
                      type = lib.types.str;
                      default = "4";
                      description = "system's load may become.";
                    };
                    timeout = lib.mkOption {
                      type = lib.types.str;
                      default = "5";
                      description = "already running - they'll have to be rebooted for this to take effect.";
                    };
                  };
                };
              };
              debug = lib.mkOption {
                default = {};
                description = "You usually don't want to touch these unless asked to do so by a developer.";
                type = lib.types.submodule {
                  options = {
                    alwaysTryNative = lib.mkOption {
                      type = lib.types.str;
                      default = "false";
                      description = "crashes as a result of setting this to `true` DO NOT REPORT IT.";
                    };
                    debugCardAccess = lib.mkOption {
                      type = lib.types.str;
                      default = "allow";
                      description = "make all functions it provides error out.";
                    };
                    disableLocaleChanging = lib.mkOption {
                      type = lib.types.str;
                      default = "false";
                      description = "the native C locale).";
                    };
                    disableMemoryLimit = lib.mkOption {
                      type = lib.types.str;
                      default = "false";
                      description = "using the native library.";
                    };
                    disablePersistence = lib.mkOption {
                      type = lib.types.str;
                      default = "false";
                      description = "saved). Only relevant when using the native library.";
                    };
                    disableUserdata = lib.mkOption {
                      type = lib.types.str;
                      default = "false";
                      description = "to the Lua state.";
                    };
                    enableDebugCard = lib.mkOption {
                      type = lib.types.str;
                      default = "true";
                      description = "just make all functions it provides error out.";
                    };
                    forceCaseInsensitiveFS = lib.mkOption {
                      type = lib.types.str;
                      default = "false";
                      description = "This only takes effect when bufferChanges is set to true.";
                    };
                    forceLuaJ = lib.mkOption {
                      type = lib.types.str;
                      default = "false";
                      description = "issues with the native library.";
                    };
                    forceNativeLibPathFirst = lib.mkOption {
                      type = lib.types.str;
                      default = "\"\"";
                      description = "directory of the running Minecraft instance.";
                    };
                    forceNativeLibPlatform = lib.mkOption {
                      type = lib.types.str;
                      default = "\"\"";
                      description = "or \"windows-aarch64\" for Windows on the aarch64 (64-bit arm) architecture.";
                    };
                    forceNativeLibWithName = lib.mkOption {
                      type = lib.types.str;
                      default = "\"\"";
                      description = "so for debugging purposes ;-)";
                    };
                    insertIdsInConverters = lib.mkOption {
                      type = lib.types.str;
                      default = "false";
                      description = "representation for Lua.";
                    };
                    logCallbackErrors = lib.mkOption {
                      type = lib.types.str;
                      default = "false";
                      description = "exceptions such as IllegalArgumentExceptions and the like.";
                    };
                    logFullNativeLibLoadErrors = lib.mkOption {
                      type = lib.types.str;
                      default = "false";
                      description = "to work.";
                    };
                    logHexFontErrors = lib.mkOption {
                      type = lib.types.str;
                      default = "false";
                      description = "width from what wcwidth says).";
                    };
                    logOpenGLErrors = lib.mkOption {
                      type = lib.types.str;
                      default = "false";
                      description = "since it'd restore some of my trust into AMD drivers...";
                    };
                    logUnifontErrors = lib.mkOption {
                      type = lib.types.str;
                      default = "false";
                      description = "width from what wcwidth says).";
                    };
                    nativeInTmpDir = lib.mkOption {
                      type = lib.types.str;
                      default = "false";
                      description = "multiple servers or server and client on the same machine.";
                    };
                    periodicallyForceLightUpdate = lib.mkOption {
                      type = lib.types.str;
                      default = "false";
                      description = "by default because it is unnecessary in *most* cases.";
                    };
                    registerLuaJArchitecture = lib.mkOption {
                      type = lib.types.str;
                      default = "false";
                      description = "the two like any other registered architecture.";
                    };
                    verbosePersistenceErrors = lib.mkOption {
                      type = lib.types.str;
                      default = "false";
                      description = "this unless you're asked to.";
                    };
                  };
                };
              };
              filesystem = lib.mkOption {
                default = {};
                description = "File system related settings, performance and and balancing.";
                type = lib.types.submodule {
                  options = {
                    bufferChanges = lib.mkOption {
                      type = lib.types.str;
                      default = "false";
                      description = "is in a computer).";
                    };
                    fileCost = lib.mkOption {
                      type = lib.types.str;
                      default = "512";
                      description = "returned via the API will always be the real file size, however.";
                    };
                    floppySize = lib.mkOption {
                      type = lib.types.str;
                      default = "512";
                      description = "The size of writable floppy disks, in kilobytes.";
                    };
                    hddPlatterCounts = lib.mkOption {
                      type = lib.types.str;
                      default = "[";
                      description = "a common head position for access).";
                    };
                    hddSizes = lib.mkOption {
                      type = lib.types.str;
                      default = "[";
                      description = "must contain exactly three entries, or it will be ignored.";
                    };
                    maxHandles = lib.mkOption {
                      type = lib.types.str;
                      default = "16";
                      description = "on the host operating system.";
                    };
                    maxReadBuffer = lib.mkOption {
                      type = lib.types.str;
                      default = "2048";
                      description = "performance of file systems.";
                    };
                    sectorSeekThreshold = lib.mkOption {
                      type = lib.types.str;
                      default = "128";
                      description = "really small, which is hard to conceptualize and configure.";
                    };
                    sectorSeekTime = lib.mkOption {
                      type = lib.types.str;
                      default = "0.1";
                      description = "The time to pause when the head movement threshold is exceeded.";
                    };
                    tmpSize = lib.mkOption {
                      type = lib.types.str;
                      default = "64";
                      description = "set to a non-positive value the tmp file system will not be created.";
                    };
                  };
                };
              };
              gpu = lib.mkOption {
                default = {};
                description = "Graphics Card Component Settings";
                type = lib.types.submodule {
                  options = {
                    bitbltCost = lib.mkOption {
                      type = lib.types.str;
                      default = "0.5";
                      description = "default is .5, which gives: .5, 1, 4";
                    };
                    vramSizes = lib.mkOption {
                      type = lib.types.str;
                      default = "[";
                      description = "text buffer space allocated";
                    };
                  };
                };
              };
              hologram = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    emitLight = lib.mkOption {
                      type = lib.types.str;
                      default = "true";
                      description = "when off, because having state-based light in MC is... painful.";
                    };
                    maxScale = lib.mkOption {
                      type = lib.types.str;
                      default = "[";
                      description = "issues due to the high view distance! Increase at your own peril.";
                    };
                    maxTranslation = lib.mkOption {
                      type = lib.types.str;
                      default = "[";
                      description = "hologram once by its own size.";
                    };
                    setRawDelay = lib.mkOption {
                      type = lib.types.str;
                      default = "0.2";
                      description = "is actually barely noticeable.";
                    };
                  };
                };
              };
              integration = lib.mkOption {
                default = {};
                description = "Settings for mod integration (the mod previously known as OpenComponents).";
                type = lib.types.submodule {
                  options = {
                    buildcraft = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          programmingTableCost = lib.mkOption {
                            type = lib.types.str;
                            default = "5000";
                            description = "Cost to convert a loot disk to another in the BuildCraft programming table.";
                          };
                        };
                      };
                    };
                    fakePlayerName = lib.mkOption {
                      type = lib.types.str;
                      default = "\"[OpenComputers]\"";
                      description = "interactions.";
                    };
                    fakePlayerUuid = lib.mkOption {
                      type = lib.types.str;
                      default = "\"7e506b5d-2ccb-4ac4-a249-5624925b0c67\"";
                      description = "interactions.";
                    };
                    modBlacklist = lib.mkOption {
                      type = lib.types.str;
                      default = "[]";
                      description = "list by default.)";
                    };
                    peripheralBlacklist = lib.mkOption {
                      type = lib.types.str;
                      default = "[";
                      description = "(and report them, please!)";
                    };
                    vanilla = lib.mkOption {
                      default = {};
                      description = "Vanilla integration related settings.";
                      type = lib.types.submodule {
                        options = {
                          allowItemStackNBTTags = lib.mkOption {
                            type = lib.types.str;
                            default = "true";
                            description = "The recommended method is to use the database component instead.";
                          };
                          enableCommandBlockDriver = lib.mkOption {
                            type = lib.types.str;
                            default = "false";
                            description = "adapter blocks. The commands are run using OC's general fake player.";
                          };
                          enableInventoryDriver = lib.mkOption {
                            type = lib.types.str;
                            default = "false";
                            description = "to enable this driver.";
                          };
                          enableTankDriver = lib.mkOption {
                            type = lib.types.str;
                            default = "false";
                            description = "an adapter has pretty much the same effect.";
                          };
                        };
                      };
                    };
                  };
                };
              };
              internet = lib.mkOption {
                default = {};
                description = "Internet settings, security related.";
                type = lib.types.submodule {
                  options = {
                    blacklist = lib.mkOption {
                      type = lib.types.str;
                      default = "[]";
                      description = "\"172.16.0.0/12\"";
                    };
                    enableHttp = lib.mkOption {
                      type = lib.types.str;
                      default = "true";
                      description = "the `request` method on internet card components becomes available.";
                    };
                    enableHttpHeaders = lib.mkOption {
                      type = lib.types.str;
                      default = "true";
                      description = "Whether to allow adding custom headers to HTTP requests.";
                    };
                    enableTcp = lib.mkOption {
                      type = lib.types.str;
                      default = "true";
                      description = "the `connect` method on internet card components becomes available.";
                    };
                    filteringRules = lib.mkOption {
                      type = lib.types.str;
                      default = "[";
                      description = "mod's context in an appropriate manner, e.g. using a system firewall.";
                    };
                    maxTcpConnections = lib.mkOption {
                      type = lib.types.str;
                      default = "4";
                      description = "open at a time.";
                    };
                    requestTimeout = lib.mkOption {
                      type = lib.types.str;
                      default = "0";
                      description = "request will never time out.";
                    };
                    threads = lib.mkOption {
                      type = lib.types.str;
                      default = "4";
                      description = "they are to delay each other.";
                    };
                    whitelist = lib.mkOption {
                      type = lib.types.str;
                      default = "[]";
                      description = "Previous contents:";
                    };
                  };
                };
              };
              misc = lib.mkOption {
                default = {};
                description = "Other settings that you might find useful to tweak.";
                type = lib.types.submodule {
                  options = {
                    allowItemStackInspection = lib.mkOption {
                      type = lib.types.str;
                      default = "true";
                      description = "upgrade and it's fluid getter method.";
                    };
                    assemblerBlacklist = lib.mkOption {
                      type = lib.types.str;
                      default = "[]";
                      description = "Examples: 'OpenComputers:case3', 'minecraft:stonebrick@1'";
                    };
                    dataCardHardLimit = lib.mkOption {
                      type = lib.types.str;
                      default = "1048576";
                      description = "limit is exceeded, the call fails and does nothing.";
                    };
                    dataCardSoftLimit = lib.mkOption {
                      type = lib.types.str;
                      default = "8192";
                      description = "limit is exceeded, a longer sleep is enforced (see dataCardTimeout).";
                    };
                    dataCardTimeout = lib.mkOption {
                      type = lib.types.str;
                      default = "1";
                      description = "card callback is exceeded.";
                    };
                    disassembleAllTheThings = lib.mkOption {
                      type = lib.types.str;
                      default = "false";
                      description = "other mods, set this to true.";
                    };
                    disassemblerBreakChance = lib.mkOption {
                      type = lib.types.str;
                      default = "0.05";
                      description = "this chance of breaking in the process.";
                    };
                    disassemblerInputBlacklist = lib.mkOption {
                      type = lib.types.str;
                      default = "[";
                      description = "as inputs will be ignored by the disassembler.";
                    };
                    diskActivitySoundDelay = lib.mkOption {
                      type = lib.types.str;
                      default = "500";
                      description = "If set to -1, no disk activity update packets are sent.";
                    };
                    geolyzerNoise = lib.mkOption {
                      type = lib.types.str;
                      default = "2";
                      description = "trade-off.";
                    };
                    geolyzerRange = lib.mkOption {
                      type = lib.types.str;
                      default = "32";
                      description = "in a cube surrounding it with twice this value as its edge length.";
                    };
                    giveManualToNewPlayers = lib.mkOption {
                      type = lib.types.str;
                      default = "false";
                      description = "is still too much for your taste, disable it here ;-)";
                    };
                    hideOwnSpecial = lib.mkOption {
                      type = lib.types.str;
                      default = "false";
                      description = "Whether to not show your special thinger (if you have one you know it).";
                    };
                    initialNetworkPacketTTL = lib.mkOption {
                      type = lib.types.str;
                      default = "5";
                      description = "impact on performances.";
                    };
                    inputUsername = lib.mkOption {
                      type = lib.types.str;
                      default = "true";
                      description = "Note: also applies to the motion sensor.";
                    };
                    lootProbability = lib.mkOption {
                      type = lib.types.str;
                      default = "5";
                      description = "is decided in an extra roll of the dice.";
                    };
                    lootRecrafting = lib.mkOption {
                      type = lib.types.str;
                      default = "true";
                      description = "Whether to allow loot disk cycling by crafting them with a wrench.";
                    };
                    maxClipboard = lib.mkOption {
                      type = lib.types.str;
                      default = "1024";
                      description = "string from the clipboard (Shift+Ins on a screen with a keyboard).";
                    };
                    maxNetworkClientEffectPacketDistance = lib.mkOption {
                      type = lib.types.str;
                      default = "64";
                      description = "These are non-essential - losing them should not cause glitches on the client side.";
                    };
                    maxNetworkClientPacketDistance = lib.mkOption {
                      type = lib.types.str;
                      default = "0";
                      description = "If set to 0, this option is ignored.";
                    };
                    maxNetworkClientSoundPacketDistance = lib.mkOption {
                      type = lib.types.str;
                      default = "32";
                      description = "These are non-essential - losing them should not cause glitches on the client side.";
                    };
                    maxNetworkPacketParts = lib.mkOption {
                      type = lib.types.str;
                      default = "8";
                      description = "computers, to avoid them getting nuked by more powerful computers.";
                    };
                    maxNetworkPacketSize = lib.mkOption {
                      type = lib.types.str;
                      default = "8192";
                      description = "not apply to HTTP traffic.";
                    };
                    maxOpenPorts = lib.mkOption {
                      type = lib.types.str;
                      default = "[";
                      description = "Network Card -> Tier 2 Wireless Network Card";
                    };
                    maxScreenHeight = lib.mkOption {
                      type = lib.types.str;
                      default = "6";
                      description = "efficient (i.e. when adding/removing a single screen).";
                    };
                    maxScreenWidth = lib.mkOption {
                      type = lib.types.str;
                      default = "8";
                      description = "See also: `maxScreenHeight`.";
                    };
                    maxWirelessRange = lib.mkOption {
                      type = lib.types.str;
                      default = "[";
                      description = "These values are for the tier 1 and 2 wireless cards, in that order.";
                    };
                    mfuRange = lib.mkOption {
                      type = lib.types.str;
                      default = "16";
                      description = "Radius the MFU is able to operate in";
                    };
                    presentChance = lib.mkOption {
                      type = lib.types.str;
                      default = "0.05";
                      description = "disable.";
                    };
                    redstoneDelay = lib.mkOption {
                      type = lib.types.str;
                      default = "0.1";
                      description = "have very negative impact on server TPS, so beware.";
                    };
                    serverRackSwitchTier = lib.mkOption {
                      type = lib.types.str;
                      default = "1";
                      description = "Valid values are: 0 = none, 1 = tier 1, 2 = tier 2, 3 = tier 3.";
                    };
                    terminalsPerTier = lib.mkOption {
                      type = lib.types.str;
                      default = "[";
                      description = "The number of remote terminals supported by each server tier.";
                    };
                    threadPriority = lib.mkOption {
                      type = lib.types.str;
                      default = "-1";
                      description = "server load. AGAIN, USE WITH CARE!";
                    };
                    tradingRange = lib.mkOption {
                      type = lib.types.str;
                      default = "8";
                      description = "be performed by the trading upgrade";
                    };
                    transposerFluidTransferRate = lib.mkOption {
                      type = lib.types.str;
                      default = "2560";
                      description = "wait ((Amount in mbuckets)/transposerFluidTransferRate) seconds";
                    };
                    updateCheck = lib.mkOption {
                      type = lib.types.str;
                      default = "false";
                      description = "joins a server / the first map in single player is opened).";
                    };
                  };
                };
              };
              nanomachines = lib.mkOption {
                default = {};
                description = "increase their amplification value).";
                type = lib.types.submodule {
                  options = {
                    commandDelay = lib.mkOption {
                      type = lib.types.str;
                      default = "1";
                      description = "and send a response.";
                    };
                    commandRange = lib.mkOption {
                      type = lib.types.str;
                      default = "2";
                      description = "the response will only be sent this far.";
                    };
                    connectorQuota = lib.mkOption {
                      type = lib.types.str;
                      default = "0.2";
                      description = "behaviors (see triggerQuota).";
                    };
                    disintegrationRange = lib.mkOption {
                      type = lib.types.str;
                      default = "1";
                      description = "Radius in blocks of the disintegration behavior for each active input.";
                    };
                    hungryDamage = lib.mkOption {
                      type = lib.types.str;
                      default = "5";
                      description = "nanomachine controller runs out of energy.";
                    };
                    hungryEnergyRestored = lib.mkOption {
                      type = lib.types.str;
                      default = "50";
                      description = "player.";
                    };
                    magnetRange = lib.mkOption {
                      type = lib.types.str;
                      default = "8";
                      description = "Range of the item magnet behavior added for each active input.";
                    };
                    maxInputs = lib.mkOption {
                      type = lib.types.str;
                      default = "2";
                      description = "may only have up to this many inputs.";
                    };
                    maxInputsActive = lib.mkOption {
                      type = lib.types.str;
                      default = "4";
                      description = "of (milli)seconds.";
                    };
                    maxOutputs = lib.mkOption {
                      type = lib.types.str;
                      default = "2";
                      description = "The maximum number of outputs for each node (see maxInputs).";
                    };
                    potionWhitelist = lib.mkOption {
                      type = lib.types.str;
                      default = "[";
                      description = "to make use of here, since they will all be disabled by default.";
                    };
                    safeInputsActive = lib.mkOption {
                      type = lib.types.str;
                      default = "2";
                      description = "effects are applied to the player.";
                    };
                    triggerQuota = lib.mkOption {
                      type = lib.types.str;
                      default = "0.4";
                      description = "via nanomachines.";
                    };
                  };
                };
              };
              power = lib.mkOption {
                default = {};
                description = "Power settings, buffer sizes and power consumption.";
                type = lib.types.submodule {
                  options = {
                    assemblerTickAmount = lib.mkOption {
                      type = lib.types.str;
                      default = "50";
                      description = "controls the speed at which robots are assembled, basically.";
                    };
                    buffer = lib.mkOption {
                      default = {};
                      description = "Default \"buffer\" sizes, i.e. how much energy certain blocks can store.";
                      type = lib.types.submodule {
                        options = {
                          accessPoint = lib.mkOption {
                            type = lib.types.str;
                            default = "600";
                            description = "The amount of energy an access point can store.";
                          };
                          batteryUpgrades = lib.mkOption {
                            type = lib.types.str;
                            default = "[";
                            description = "upgrade into a robot.";
                          };
                          capacitor = lib.mkOption {
                            type = lib.types.str;
                            default = "1600";
                            description = "The amount of energy a single capacitor can store.";
                          };
                          capacitorAdjacencyBonus = lib.mkOption {
                            type = lib.types.str;
                            default = "800";
                            description = "(1.6 + 0.8 + 0.4)k + (0.8 + 1.6 + 0.8)k + (0.4 + 0.8 + 1.6)k";
                          };
                          computer = lib.mkOption {
                            type = lib.types.str;
                            default = "500";
                            description = "computer up and running without also having to build a capacitor.";
                          };
                          converter = lib.mkOption {
                            type = lib.types.str;
                            default = "1000";
                            description = "capacitor on the side of the converter.";
                          };
                          distributor = lib.mkOption {
                            type = lib.types.str;
                            default = "500";
                            description = "add capacitors between two distributors to increase this bandwidth.";
                          };
                          drone = lib.mkOption {
                            type = lib.types.str;
                            default = "5000";
                            description = "The amount of energy a drone can store in its internal buffer.";
                          };
                          hoverBoots = lib.mkOption {
                            type = lib.types.str;
                            default = "15000";
                            description = "The internal buffer size of the hover boots.";
                          };
                          mcu = lib.mkOption {
                            type = lib.types.str;
                            default = "1000";
                            description = "buffer.";
                          };
                          nanomachines = lib.mkOption {
                            type = lib.types.str;
                            default = "100000";
                            description = "where all that energy is stored. It's quite fascinating.";
                          };
                          robot = lib.mkOption {
                            type = lib.types.str;
                            default = "20000";
                            description = "The amount of energy robots can store in their internal buffer.";
                          };
                          tablet = lib.mkOption {
                            type = lib.types.str;
                            default = "10000";
                            description = "The amount a tablet can store in its internal buffer.";
                          };
                        };
                      };
                    };
                    carpetedCapacitors = lib.mkOption {
                      default = {};
                      description = "capacitor per second with 2 animals of a type.";
                      type = lib.types.submodule {
                        options = {
                          damageChance = lib.mkOption {
                            type = lib.types.str;
                            default = "0.001";
                            description = "Damage chance is only dealt when power is generated";
                          };
                          ocelotPower = lib.mkOption {
                            type = lib.types.str;
                            default = "6";
                            description = "power generated from ocelots";
                          };
                          sheepPower = lib.mkOption {
                            type = lib.types.str;
                            default = "3";
                            description = "power generated from sheep";
                          };
                        };
                      };
                    };
                    chargerChargeRate = lib.mkOption {
                      type = lib.types.str;
                      default = "100";
                      description = "charge robots at roughly half speed.";
                    };
                    chargerChargeRateTablet = lib.mkOption {
                      type = lib.types.str;
                      default = "10";
                      description = "tick. This is also based on configured charge speed, as for robots.";
                    };
                    cost = lib.mkOption {
                      default = {};
                      description = "Default \"costs\", i.e. how much energy certain operations consume.";
                      type = lib.types.submodule {
                        options = {
                          abstractBusPacket = lib.mkOption {
                            type = lib.types.str;
                            default = "1";
                            description = "The cost of a single packet sent via StargateTech 2's abstract bus.";
                          };
                          chunkloaderCost = lib.mkOption {
                            type = lib.types.str;
                            default = "0.06";
                            description = "it is enabled, i.e. actually loading a chunk.";
                          };
                          computer = lib.mkOption {
                            type = lib.types.str;
                            default = "0.5";
                            description = "The amount of energy a computer consumes per tick when running.";
                          };
                          dataCardAsymmetric = lib.mkOption {
                            type = lib.types.str;
                            default = "10";
                            description = "because data is hashed with SHA256 before signing/verifying";
                          };
                          dataCardComplex = lib.mkOption {
                            type = lib.types.str;
                            default = "6";
                            description = "Cost for complex operations on the data card, such as SHA256, inflate/deflate and SecureRandom.";
                          };
                          dataCardComplexByte = lib.mkOption {
                            type = lib.types.str;
                            default = "0.1";
                            description = "Per-byte cost for complex operations";
                          };
                          dataCardSimple = lib.mkOption {
                            type = lib.types.str;
                            default = "1";
                            description = "Cost for simple operations on the data card, such as MD5 or AES";
                          };
                          dataCardSimpleByte = lib.mkOption {
                            type = lib.types.str;
                            default = "0.01";
                            description = "Per-byte cost for simple operations";
                          };
                          dataCardTrivial = lib.mkOption {
                            type = lib.types.str;
                            default = "0.2";
                            description = "Cost for trivial operations on the data card, such as CRC32 or Base64";
                          };
                          dataCardTrivialByte = lib.mkOption {
                            type = lib.types.str;
                            default = "0.005";
                            description = "Per-byte cost for trivial operations";
                          };
                          disassemblerPerItem = lib.mkOption {
                            type = lib.types.str;
                            default = "2000";
                            description = "disassemblerBreakChance setting).";
                          };
                          drone = lib.mkOption {
                            type = lib.types.str;
                            default = "0.4";
                            description = "The amount of energy a drone consumes per tick when running.";
                          };
                          droneAssemblyBase = lib.mkOption {
                            type = lib.types.str;
                            default = "25000";
                            description = "The base energy cost for assembling a drone.";
                          };
                          droneAssemblyComplexity = lib.mkOption {
                            type = lib.types.str;
                            default = "15000";
                            description = "drone for each point of complexity.";
                          };
                          eepromWrite = lib.mkOption {
                            type = lib.types.str;
                            default = "50";
                            description = "expensive, to discourage frequent re-writing of EEPROMs.";
                          };
                          geolyzerScan = lib.mkOption {
                            type = lib.types.str;
                            default = "10";
                            description = "How much energy is consumed when the Geolyzer scans a block.";
                          };
                          gpuClear = lib.mkOption {
                            type = lib.types.str;
                            default = "0.1";
                            description = "screens.";
                          };
                          gpuCopy = lib.mkOption {
                            type = lib.types.str;
                            default = "0.25";
                            description = "screens.";
                          };
                          gpuFill = lib.mkOption {
                            type = lib.types.str;
                            default = "1";
                            description = "screens.";
                          };
                          gpuSet = lib.mkOption {
                            type = lib.types.str;
                            default = "2";
                            description = "screens.";
                          };
                          hddRead = lib.mkOption {
                            type = lib.types.str;
                            default = "0.1";
                            description = "as such. It's just specified per kilobyte to be more intuitive.";
                          };
                          hddWrite = lib.mkOption {
                            type = lib.types.str;
                            default = "0.25";
                            description = "as such. It's just specified per kilobyte to be more intuitive.";
                          };
                          hologram = lib.mkOption {
                            type = lib.types.str;
                            default = "0.2";
                            description = "displayed the hologram projector will not drain energy.";
                          };
                          hoverBootAbsorb = lib.mkOption {
                            type = lib.types.str;
                            default = "10";
                            description = "velocity (i.e. when falling from something higher than three blocks).";
                          };
                          hoverBootJump = lib.mkOption {
                            type = lib.types.str;
                            default = "10";
                            description = "applies when the jump boost is applied, i.e. when not sneaking.";
                          };
                          hoverBootMove = lib.mkOption {
                            type = lib.types.str;
                            default = "1";
                            description = "moving very slowly this also does not trigger.";
                          };
                          mfuRelay = lib.mkOption {
                            type = lib.types.str;
                            default = "1";
                            description = "Similarly to `wirelessCostPerRange`, this is multiplied with the distance to the bound block.";
                          };
                          microcontroller = lib.mkOption {
                            type = lib.types.str;
                            default = "0.1";
                            description = "Amount of energy a microcontroller consumes per tick while running.";
                          };
                          microcontrollerAssemblyBase = lib.mkOption {
                            type = lib.types.str;
                            default = "10000";
                            description = "The base energy cost for assembling a microcontroller.";
                          };
                          microcontrollerAssemblyComplexity = lib.mkOption {
                            type = lib.types.str;
                            default = "10000";
                            description = "microcontroller for each point of complexity.";
                          };
                          nanomachineInput = lib.mkOption {
                            type = lib.types.str;
                            default = "0.5";
                            description = "Energy consumed per tick per active input node by nanomachines.";
                          };
                          nanomachinesReconfigure = lib.mkOption {
                            type = lib.types.str;
                            default = "5000";
                            description = "Energy consumed when reconfiguring nanomachines.";
                          };
                          pistonPush = lib.mkOption {
                            type = lib.types.str;
                            default = "20";
                            description = "The amount of energy pushing blocks with the piston upgrade costs.";
                          };
                          printerModel = lib.mkOption {
                            type = lib.types.str;
                            default = "100";
                            description = "How much energy is required for a single 3D print.";
                          };
                          robot = lib.mkOption {
                            type = lib.types.str;
                            default = "0.25";
                            description = "computers.";
                          };
                          robotAssemblyBase = lib.mkOption {
                            type = lib.types.str;
                            default = "50000";
                            description = "The base energy cost for assembling a robot.";
                          };
                          robotAssemblyComplexity = lib.mkOption {
                            type = lib.types.str;
                            default = "10000";
                            description = "each point of complexity.";
                          };
                          robotExhaustion = lib.mkOption {
                            type = lib.types.str;
                            default = "10";
                            description = "exhaustion, attacking an entity generates 0.3 exhaustion.";
                          };
                          robotMove = lib.mkOption {
                            type = lib.types.str;
                            default = "15";
                            description = "The amount of energy it takes a robot to move a single block.";
                          };
                          robotTurn = lib.mkOption {
                            type = lib.types.str;
                            default = "2.5";
                            description = "The amount of energy it takes a robot to perform a 90 degree turn.";
                          };
                          screen = lib.mkOption {
                            type = lib.types.str;
                            default = "0.05";
                            description = "part of it will consume this amount of energy per tick.";
                          };
                          sleepFactor = lib.mkOption {
                            type = lib.types.str;
                            default = "0.1";
                            description = "you can't fake sleep by calling `os.sleep(0)`.";
                          };
                          tabletAssemblyBase = lib.mkOption {
                            type = lib.types.str;
                            default = "20000";
                            description = "The base energy cost for assembling a tablet.";
                          };
                          tabletAssemblyComplexity = lib.mkOption {
                            type = lib.types.str;
                            default = "5000";
                            description = "each point of complexity.";
                          };
                          transposer = lib.mkOption {
                            type = lib.types.str;
                            default = "1";
                            description = "of items / fluid volume moved).";
                          };
                          wirelessCostPerRange = lib.mkOption {
                            type = lib.types.str;
                            default = "[";
                            description = "These values are for the tier 1 and 2 wireless cards, in that order.";
                          };
                        };
                      };
                    };
                    disassemblerTickAmount = lib.mkOption {
                      type = lib.types.str;
                      default = "25";
                      description = "controls the speed at which items are disassembled, basically.";
                    };
                    generatorEfficiency = lib.mkOption {
                      type = lib.types.str;
                      default = "0.8";
                      description = "default.";
                    };
                    ignorePower = lib.mkOption {
                      type = lib.types.str;
                      default = "false";
                      description = "not accept power from other mods.";
                    };
                    modBlacklist = lib.mkOption {
                      type = lib.types.str;
                      default = "[]";
                      description = "`BuildCraftAPI|power`, `IC2`, `factorization`, ...";
                    };
                    printerTickAmount = lib.mkOption {
                      type = lib.types.str;
                      default = "1";
                      description = "the speed at which prints are completed, basically.";
                    };
                    rate = lib.mkOption {
                      default = {};
                      description = "values are in OC energy / tick.";
                      type = lib.types.submodule {
                        options = {
                          accessPoint = lib.mkOption {
                            type = lib.types.str;
                            default = "10";
                          };
                          assembler = lib.mkOption {
                            type = lib.types.str;
                            default = "100";
                          };
                          case = lib.mkOption {
                            type = lib.types.str;
                            default = "[";
                          };
                          charger = lib.mkOption {
                            type = lib.types.str;
                            default = "200";
                          };
                          disassembler = lib.mkOption {
                            type = lib.types.str;
                            default = "50";
                          };
                          powerConverter = lib.mkOption {
                            type = lib.types.str;
                            default = "500";
                          };
                          serverRack = lib.mkOption {
                            type = lib.types.str;
                            default = "50";
                          };
                        };
                      };
                    };
                    ritegEfficiency = lib.mkOption {
                      type = lib.types.str;
                      default = "0.6";
                      description = "Stirling Engine.";
                    };
                    solarGeneratorEfficiency = lib.mkOption {
                      type = lib.types.str;
                      default = "0.2";
                      description = "of solar generators is greatly reduced by default.";
                    };
                    tickFrequency = lib.mkOption {
                      type = lib.types.str;
                      default = "10";
                      description = "`tickFrequency * cost`.";
                    };
                    value = lib.mkOption {
                      default = {};
                      description = "point numbers in the config, due to potential loss of precision.";
                      type = lib.types.submodule {
                        options = {
                          AppliedEnergistics2 = lib.mkOption {
                            type = lib.types.str;
                            default = "200";
                          };
                          Factorization = lib.mkOption {
                            type = lib.types.str;
                            default = "13";
                          };
                          Galacticraft = lib.mkOption {
                            type = lib.types.str;
                            default = "48";
                          };
                          IndustrialCraft2 = lib.mkOption {
                            type = lib.types.str;
                            default = "400";
                          };
                          Mekanism = lib.mkOption {
                            type = lib.types.str;
                            default = "1333.33";
                          };
                          RedstoneFlux = lib.mkOption {
                            type = lib.types.str;
                            default = "100";
                          };
                          RotaryCraft = lib.mkOption {
                            type = lib.types.str;
                            default = "200";
                            description = "/ 11256, same as AE2";
                          };
                        };
                      };
                    };
                  };
                };
              };
              printer = lib.mkOption {
                default = {};
                description = "3D printer related stuff.";
                type = lib.types.submodule {
                  options = {
                    chameliumEdible = lib.mkOption {
                      type = lib.types.str;
                      default = "true";
                      description = "invisibility buff, and (slightly longer) blindness debuff.";
                    };
                    customRedstoneCost = lib.mkOption {
                      type = lib.types.str;
                      default = "300";
                      description = "redstone output, i.e. something in [1, 14].";
                    };
                    inkValue = lib.mkOption {
                      type = lib.types.str;
                      default = "50000";
                      description = "Note: the amount a single dye adds is this divided by 10.";
                    };
                    materialValue = lib.mkOption {
                      type = lib.types.str;
                      default = "2000";
                      description = "chamelium. Tweak this if you think printing is too cheap or expensive.";
                    };
                    maxBaseLightLevel = lib.mkOption {
                      type = lib.types.str;
                      default = "8";
                      description = "achieved directly when printing them.";
                    };
                    maxShapes = lib.mkOption {
                      type = lib.types.str;
                      default = "256";
                      description = "will ever be visible at a time).";
                    };
                    noclipMultiplier = lib.mkOption {
                      type = lib.types.str;
                      default = "2";
                      description = "This only influences the chamelium cost.";
                    };
                    printsHaveOpacity = lib.mkOption {
                      type = lib.types.str;
                      default = "false";
                      description = "enable this.";
                    };
                    recycleRate = lib.mkOption {
                      type = lib.types.str;
                      default = "0.75";
                      description = "functionality (won't be able to put prints into the material input).";
                    };
                  };
                };
              };
              robot = lib.mkOption {
                default = {};
                description = "Robot related settings, what they may do and general balancing.";
                type = lib.types.submodule {
                  options = {
                    allowActivateBlocks = lib.mkOption {
                      type = lib.types.str;
                      default = "true";
                      description = "feature is too over-powered.";
                    };
                    allowUseItemsWithDuration = lib.mkOption {
                      type = lib.types.str;
                      default = "true";
                      description = "robots cannot rapidly fire critical shots with a bow, for example.";
                    };
                    canAttackPlayers = lib.mkOption {
                      type = lib.types.str;
                      default = "false";
                      description = "in the game.";
                    };
                    delays = lib.mkOption {
                      default = {};
                      description = "Allows fine-tuning of delays for robot actions.";
                      type = lib.types.submodule {
                        options = {
                          drop = lib.mkOption {
                            type = lib.types.str;
                            default = "0.5";
                            description = "successfully dropped from a robot's inventory.";
                          };
                          harvestRatio = lib.mkOption {
                            type = lib.types.str;
                            default = "1";
                            description = "Breaking a block will always at least take one tick, 0.05 seconds.";
                          };
                          move = lib.mkOption {
                            type = lib.types.str;
                            default = "0.4";
                            description = "of the move animation.";
                          };
                          place = lib.mkOption {
                            type = lib.types.str;
                            default = "0.4";
                            description = "placed an item from its inventory.";
                          };
                          suck = lib.mkOption {
                            type = lib.types.str;
                            default = "0.5";
                            description = "picked up an item after triggering a suck command.";
                          };
                          swing = lib.mkOption {
                            type = lib.types.str;
                            default = "0.4";
                            description = "`harvestRatio` (see below) applies.";
                          };
                          turn = lib.mkOption {
                            type = lib.types.str;
                            default = "0.4";
                            description = "animation.";
                          };
                          use = lib.mkOption {
                            type = lib.types.str;
                            default = "0.4";
                            description = "item use is taken.";
                          };
                        };
                      };
                    };
                    itemDamageRate = lib.mkOption {
                      type = lib.types.str;
                      default = "0.1";
                      description = "immediately after it was used.";
                    };
                    limitFlightHeight = lib.mkOption {
                      type = lib.types.str;
                      default = "8";
                      description = "unlimited flight capabilities instead!";
                    };
                    nameFormat = lib.mkOption {
                      type = lib.types.str;
                      default = "\"$player$.robot\"";
                      description = "block from another mod, the name will default to 'OpenComputers'.";
                    };
                    notAfraidOfSpiders = lib.mkOption {
                      type = lib.types.str;
                      default = "true";
                      description = "rationally explained by Steve's fear of spiders, anyway.";
                    };
                    swingRange = lib.mkOption {
                      type = lib.types.str;
                      default = "0.49";
                      description = "hit anything that's actually outside said block.";
                    };
                    upgradeFlightHeight = lib.mkOption {
                      type = lib.types.str;
                      default = "[";
                      description = "hover upgrade, respectively.";
                    };
                    useAndPlaceRange = lib.mkOption {
                      type = lib.types.str;
                      default = "0.65";
                      description = "i.e. tilled dirt, so that they can plant seeds.";
                    };
                    uuidFormat = lib.mkOption {
                      type = lib.types.str;
                      default = "\"$player$\"";
                      description = "$random$.";
                    };
                    xp = lib.mkOption {
                      default = {};
                      description = "alters the stats.";
                      type = lib.types.submodule {
                        options = {
                          actionXp = lib.mkOption {
                            type = lib.types.str;
                            default = "0.05";
                            description = "will *not* gain a robot any experience.";
                          };
                          baseValue = lib.mkOption {
                            type = lib.types.str;
                            default = "50";
                            description = "xp(level) = baseValue + (level * constantGrowth) ^ exponentialGrowth";
                          };
                          bufferPerLevel = lib.mkOption {
                            type = lib.types.str;
                            default = "5000";
                            description = "two hundred thousand.";
                          };
                          constantGrowth = lib.mkOption {
                            type = lib.types.str;
                            default = "8";
                            description = "xp(level) = baseValue + (level * constantGrowth) ^ exponentialGrowth";
                          };
                          exhaustionXpRate = lib.mkOption {
                            type = lib.types.str;
                            default = "1";
                            description = "will per default give 0.05 + 0.025 [exhaustion] * 1.0 = 0.075 XP.";
                          };
                          exponentialGrowth = lib.mkOption {
                            type = lib.types.str;
                            default = "2";
                            description = "xp(level) = baseValue + (level * constantGrowth) ^ exponentialGrowth";
                          };
                          harvestSpeedBoostPerLevel = lib.mkOption {
                            type = lib.types.str;
                            default = "0.02";
                            description = "0.12 seconds.";
                          };
                          oreXpRate = lib.mkOption {
                            type = lib.types.str;
                            default = "4";
                            description = "two real experience points, redstone is worth 5.";
                          };
                          toolEfficiencyPerLevel = lib.mkOption {
                            type = lib.types.str;
                            default = "0.01";
                            description = "that would lead to a damage rate of 0.1 * (1 - 0.15) = 0.085.";
                          };
                        };
                      };
                    };
                  };
                };
              };
              switch = lib.mkOption {
                default = {};
                description = "Switch and access point network message forwarding logic related stuff.";
                type = lib.types.submodule {
                  options = {
                    defaultMaxQueueSize = lib.mkOption {
                      type = lib.types.str;
                      default = "20";
                      description = "burst.";
                    };
                    defaultRelayAmount = lib.mkOption {
                      type = lib.types.str;
                      default = "1";
                      description = "cooldown between cycles is determined by the delay.";
                    };
                    defaultRelayDelay = lib.mkOption {
                      type = lib.types.str;
                      default = "5";
                      description = "and may in extreme cases cause server lag.";
                    };
                    queueSizeUpgrade = lib.mkOption {
                      type = lib.types.str;
                      default = "10";
                      description = "hard drive installed in the switch.";
                    };
                    relayAmountUpgrade = lib.mkOption {
                      type = lib.types.str;
                      default = "1";
                      description = "two per item tier.";
                    };
                    relayDelayUpgrade = lib.mkOption {
                      type = lib.types.str;
                      default = "1.5";
                      description = "inserted into a switch.";
                    };
                  };
                };
              };
              version = lib.mkOption {
                type = lib.types.str;
                default = "\"1.11.12-GTNH\"";
                description = "versions, so that the user does not have to delete it.";
              };
            };
          };
        };
      };
    };
  };
}
