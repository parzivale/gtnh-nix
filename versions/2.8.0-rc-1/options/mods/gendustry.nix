{lib, ...}: {
  bees = lib.mkOption {
    description = "bees configuration (./config/gendustry/bees.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/gendustry/bees.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        recipes = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  overrides_recipes = lib.mkOption {
    description = "overrides_recipes configuration (./config/gendustry/overrides/recipes.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/gendustry/overrides/recipes.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "if HaveMod IC2" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
            };
          };
        };
      };
    };
  };
  overrides_tuning = lib.mkOption {
    description = "overrides_tuning configuration (./config/gendustry/overrides/tuning.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/gendustry/overrides/tuning.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "cfg Machines" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "cfg MutagenProducer" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    Enabled = lib.mkOption {
                      type = lib.types.str;
                      default = "Yes";
                    };
                    MaxReceivedEnergy = lib.mkOption {
                      type = lib.types.str;
                      default = "150";
                    };
                    PowerUseRate = lib.mkOption {
                      type = lib.types.str;
                      default = "0.0005";
                    };
                    MjPerItem = lib.mkOption {
                      type = lib.types.str;
                      default = "200000";
                    };
                    MaxStoredEnergy = lib.mkOption {
                      type = lib.types.str;
                      default = "1000000";
                    };
                    ActivationEnergy = lib.mkOption {
                      type = lib.types.str;
                      default = "25";
                    };
                    TankSize = lib.mkOption {
                      type = lib.types.str;
                      default = "10000 // Output tank size in milibuckets";
                    };
                  };
                };
              };
              "cfg Mutatron" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    Enabled = lib.mkOption {
                      type = lib.types.str;
                      default = "Yes";
                    };
                    MaxReceivedEnergy = lib.mkOption {
                      type = lib.types.str;
                      default = "150";
                    };
                    PowerUseRate = lib.mkOption {
                      type = lib.types.str;
                      default = "0.001";
                    };
                    MjPerItem = lib.mkOption {
                      type = lib.types.str;
                      default = "2000000";
                    };
                    MaxStoredEnergy = lib.mkOption {
                      type = lib.types.str;
                      default = "2000000";
                    };
                    ActivationEnergy = lib.mkOption {
                      type = lib.types.str;
                      default = "10";
                    };
                    TankSize = lib.mkOption {
                      type = lib.types.str;
                      default = "10000             // Output tank size in milibuckets";
                    };
                    MutagenPerItem = lib.mkOption {
                      type = lib.types.str;
                      default = "5000        // Mutagen use per run, in milibuckets";
                    };
                    LabwareConsumeChance = lib.mkOption {
                      type = lib.types.str;
                      default = "100   // Chance that the Genetic Labware will be consumed, 0-100";
                    };
                    DegradeChanceNatural = lib.mkOption {
                      type = lib.types.str;
                      default = "30     // Chance of natural princesses to become artificial when mutating, 0-100";
                    };
                    DeathChanceArtificial = lib.mkOption {
                      type = lib.types.str;
                      default = "80  // Chance of artificial princesses to be killed when mutating, 0-100";
                    };
                    SecretMutationChance = lib.mkOption {
                      type = lib.types.str;
                      default = "10    // Chance that secret mutation will be selected over a normal one, 0-100";
                    };
                  };
                };
              };
              "cfg MutatronAdv" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    Enabled = lib.mkOption {
                      type = lib.types.str;
                      default = "Yes";
                    };
                    MaxReceivedEnergy = lib.mkOption {
                      type = lib.types.str;
                      default = "500";
                    };
                    PowerUseRate = lib.mkOption {
                      type = lib.types.str;
                      default = "0.00125";
                    };
                    MjPerItem = lib.mkOption {
                      type = lib.types.str;
                      default = "200000";
                    };
                    MaxStoredEnergy = lib.mkOption {
                      type = lib.types.str;
                      default = "2000000";
                    };
                    ActivationEnergy = lib.mkOption {
                      type = lib.types.str;
                      default = "20";
                    };
                    TankSize = lib.mkOption {
                      type = lib.types.str;
                      default = "10000             // Output tank size in milibuckets";
                    };
                    MutagenPerItem = lib.mkOption {
                      type = lib.types.str;
                      default = "2500        // Mutagen use per run, in milibuckets";
                    };
                    LabwareConsumeChance = lib.mkOption {
                      type = lib.types.str;
                      default = "100   // Chance that the Genetic Labware will be consumed, 0-100";
                    };
                    DegradeChanceNatural = lib.mkOption {
                      type = lib.types.str;
                      default = "10     // Chance of natural princesses to become artificial when mutating, 0-100";
                    };
                    DeathChanceArtificial = lib.mkOption {
                      type = lib.types.str;
                      default = "50   // Chance of artificial princesses to be killed when mutating, 0-100";
                    };
                    SecretMutationChance = lib.mkOption {
                      type = lib.types.str;
                      default = "20    // Chance that secret mutation will be selected over a normal one, 0-100";
                    };
                  };
                };
              };
              "cfg Sampler" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    Enabled = lib.mkOption {
                      type = lib.types.str;
                      default = "Yes";
                    };
                    MaxReceivedEnergy = lib.mkOption {
                      type = lib.types.str;
                      default = "150";
                    };
                    PowerUseRate = lib.mkOption {
                      type = lib.types.str;
                      default = "0.001";
                    };
                    MjPerItem = lib.mkOption {
                      type = lib.types.str;
                      default = "20000";
                    };
                    MaxStoredEnergy = lib.mkOption {
                      type = lib.types.str;
                      default = "100000";
                    };
                    ActivationEnergy = lib.mkOption {
                      type = lib.types.str;
                      default = "10";
                    };
                    LabwareConsumeChance = lib.mkOption {
                      type = lib.types.str;
                      default = "100 // Chance that the Genetic Labware will be consumed, 0-100";
                    };
                  };
                };
              };
              "cfg Imprinter" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    Enabled = lib.mkOption {
                      type = lib.types.str;
                      default = "Yes";
                    };
                    MaxReceivedEnergy = lib.mkOption {
                      type = lib.types.str;
                      default = "250";
                    };
                    PowerUseRate = lib.mkOption {
                      type = lib.types.str;
                      default = "0.0005";
                    };
                    MjPerItem = lib.mkOption {
                      type = lib.types.str;
                      default = "120000";
                    };
                    MaxStoredEnergy = lib.mkOption {
                      type = lib.types.str;
                      default = "400000";
                    };
                    ActivationEnergy = lib.mkOption {
                      type = lib.types.str;
                      default = "20";
                    };
                    LabwareConsumeChance = lib.mkOption {
                      type = lib.types.str;
                      default = "100 // Chance that the Genetic Labware will be consumed, 0-100";
                    };
                    DeathChanceNatural = lib.mkOption {
                      type = lib.types.str;
                      default = "20     // Chance of natural princesses or queen to be killed when imprinting, 0-100";
                    };
                    DeathChanceArtificial = lib.mkOption {
                      type = lib.types.str;
                      default = "40 // Chance of artificial princesses or queen to be killed when imprinting, 0-100";
                    };
                  };
                };
              };
              "cfg IndustrialApiary" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    Enabled = lib.mkOption {
                      type = lib.types.str;
                      default = "Yes";
                    };
                    MaxReceivedEnergy = lib.mkOption {
                      type = lib.types.str;
                      default = "100";
                    };
                    MaxStoredEnergy = lib.mkOption {
                      type = lib.types.str;
                      default = "100000";
                    };
                    ActivationEnergy = lib.mkOption {
                      type = lib.types.str;
                      default = "0";
                    };
                    BaseMjPerTick = lib.mkOption {
                      type = lib.types.str;
                      default = "15 // Base run cost in MJ/t, before any modifiers";
                    };
                  };
                };
              };
              "cfg Extractor" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    Enabled = lib.mkOption {
                      type = lib.types.str;
                      default = "Yes";
                    };
                    MaxReceivedEnergy = lib.mkOption {
                      type = lib.types.str;
                      default = "500";
                    };
                    PowerUseRate = lib.mkOption {
                      type = lib.types.str;
                      default = "0.001";
                    };
                    MjPerItem = lib.mkOption {
                      type = lib.types.str;
                      default = "120000";
                    };
                    MaxStoredEnergy = lib.mkOption {
                      type = lib.types.str;
                      default = "400000";
                    };
                    ActivationEnergy = lib.mkOption {
                      type = lib.types.str;
                      default = "40";
                    };
                    TankSize = lib.mkOption {
                      type = lib.types.str;
                      default = "5000 // Output tank size in milibuckets";
                    };
                    LabwareConsumeChance = lib.mkOption {
                      type = lib.types.str;
                      default = "50 // Chance that the Genetic Labware will be consumed, 0-100";
                    };
                  };
                };
              };
              "cfg Liquifier" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    Enabled = lib.mkOption {
                      type = lib.types.str;
                      default = "Yes";
                    };
                    MaxReceivedEnergy = lib.mkOption {
                      type = lib.types.str;
                      default = "1000";
                    };
                    PowerUseRate = lib.mkOption {
                      type = lib.types.str;
                      default = "0.002";
                    };
                    MjPerItem = lib.mkOption {
                      type = lib.types.str;
                      default = "50000";
                    };
                    MaxStoredEnergy = lib.mkOption {
                      type = lib.types.str;
                      default = "100000";
                    };
                    ActivationEnergy = lib.mkOption {
                      type = lib.types.str;
                      default = "20";
                    };
                    TankSize = lib.mkOption {
                      type = lib.types.str;
                      default = "5000 // Output tank size in milibuckets";
                    };
                  };
                };
              };
              "cfg Transposer" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    Enabled = lib.mkOption {
                      type = lib.types.str;
                      default = "Yes";
                    };
                    MaxReceivedEnergy = lib.mkOption {
                      type = lib.types.str;
                      default = "500";
                    };
                    PowerUseRate = lib.mkOption {
                      type = lib.types.str;
                      default = "0.002";
                    };
                    MjPerItem = lib.mkOption {
                      type = lib.types.str;
                      default = "80000";
                    };
                    MaxStoredEnergy = lib.mkOption {
                      type = lib.types.str;
                      default = "100000";
                    };
                    ActivationEnergy = lib.mkOption {
                      type = lib.types.str;
                      default = "20";
                    };
                    LabwareConsumeChance = lib.mkOption {
                      type = lib.types.str;
                      default = "20 // Chance that the Genetic Labware will be consumed, 0-100";
                    };
                  };
                };
              };
              "cfg Replicator" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    Enabled = lib.mkOption {
                      type = lib.types.str;
                      default = "Yes";
                    };
                    MaxReceivedEnergy = lib.mkOption {
                      type = lib.types.str;
                      default = "500";
                    };
                    PowerUseRate = lib.mkOption {
                      type = lib.types.str;
                      default = "0.001";
                    };
                    MjPerItem = lib.mkOption {
                      type = lib.types.str;
                      default = "350000";
                    };
                    MaxStoredEnergy = lib.mkOption {
                      type = lib.types.str;
                      default = "800000";
                    };
                    ActivationEnergy = lib.mkOption {
                      type = lib.types.str;
                      default = "50";
                    };
                    DNATankSize = lib.mkOption {
                      type = lib.types.str;
                      default = "10000         // Liquid DNA tank size, in milibuckets";
                    };
                    DNAPerItem = lib.mkOption {
                      type = lib.types.str;
                      default = "5000           // Liquid DNA use per run, in milibuckets";
                    };
                    ProteinTankSize = lib.mkOption {
                      type = lib.types.str;
                      default = "50000     // Protein tank size, in milibuckets";
                    };
                    ProteinPerItem = lib.mkOption {
                      type = lib.types.str;
                      default = "5000       // Protein use per run, in milibuckets";
                    };
                    MakePristineBees = lib.mkOption {
                      type = lib.types.str;
                      default = "False    // Set to true to produce pristine bees";
                    };
                  };
                };
              };
            };
          };
        };
        "cfg Items" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "cfg IndustrialGrafter" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    Enabled = lib.mkOption {
                      type = lib.types.str;
                      default = "Yes";
                    };
                    Charges = lib.mkOption {
                      type = lib.types.str;
                      default = "500           // Number of blocks that a fully charged grafter can break";
                    };
                    MjPerCharge = lib.mkOption {
                      type = lib.types.str;
                      default = "750       // Cost of a single broken block in MJ";
                    };
                    AOE = lib.mkOption {
                      type = lib.types.str;
                      default = "2                 // Radius from the central block, 1 = 3x3x3, 2 = 5x5x5 and so on";
                    };
                    SaplingModifier = lib.mkOption {
                      type = lib.types.str;
                      default = "100   // Modifier for chance to get sapling, 100 is equal to a vanila grafter";
                    };
                  };
                };
              };
              "cfg IndustrialScoop" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    Enabled = lib.mkOption {
                      type = lib.types.str;
                      default = "Yes";
                    };
                    Charges = lib.mkOption {
                      type = lib.types.str;
                      default = "750           // Number of blocks that a fully charged grafter can break";
                    };
                    MjPerCharge = lib.mkOption {
                      type = lib.types.str;
                      default = "10        // Cost of a single broken block in MJ";
                    };
                    SilktouchCharges = lib.mkOption {
                      type = lib.types.str;
                      default = "20   // Cost of silktouch harvesting";
                    };
                  };
                };
              };
            };
          };
        };
        "cfg Power" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              RF_MJ_Ratio = lib.mkOption {
                type = lib.types.str;
                default = "10  // 10 RF = 1 MJ";
              };
              EU_MJ_Ratio = lib.mkOption {
                type = lib.types.str;
                default = "2.5 // 5 EU = 2 MJ";
              };
              "cfg EU" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    Enabled = lib.mkOption {
                      type = lib.types.str;
                      default = "Y";
                    };
                    "// 1" = lib.mkOption {
                      type = lib.types.str;
                      default = "LV, 2 = MV, 3 = HV, 4 = EV etc.";
                    };
                    SinkTier = lib.mkOption {
                      type = lib.types.str;
                      default = "4";
                    };
                  };
                };
              };
              "cfg RF" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    Enabled = lib.mkOption {
                      type = lib.types.str;
                      default = "Y";
                    };
                  };
                };
              };
              "cfg RedstoneCharging" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    Enabled = lib.mkOption {
                      type = lib.types.str;
                      default = "Y           // This enables charging powered items in a normal crafting grid by using redstone dust";
                    };
                    RedstoneValue = lib.mkOption {
                      type = lib.types.str;
                      default = "2500  // MJ per redstone dust (blocks are x9)";
                    };
                  };
                };
              };
            };
          };
        };
        "cfg Genetics" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "cfg MutatronOverrides" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    "\"forestry.speciesLeporine\"" = lib.mkOption {
                      type = lib.types.str;
                      default = "REQUIREMENTS";
                    };
                    "\"forestry.speciesMerry\"" = lib.mkOption {
                      type = lib.types.str;
                      default = "REQUIREMENTS";
                    };
                    "\"forestry.speciesTipsy\"" = lib.mkOption {
                      type = lib.types.str;
                      default = "REQUIREMENTS";
                    };
                    "\"forestry.speciesTricky\"" = lib.mkOption {
                      type = lib.types.str;
                      default = "REQUIREMENTS";
                    };
                    "\"extrabees.species.chad\"" = lib.mkOption {
                      type = lib.types.str;
                      default = "REQUIREMENTS";
                    };
                    "\"gregtech.bee.speciesCosmicneutronium\"" = lib.mkOption {
                      type = lib.types.str;
                      default = "DISABLED";
                    };
                    "\"gregtech.bee.speciesInfinitycatalyst\"" = lib.mkOption {
                      type = lib.types.str;
                      default = "DISABLED";
                    };
                    "\"gregtech.bee.speciesInfinity\"" = lib.mkOption {
                      type = lib.types.str;
                      default = "DISABLED";
                    };
                    "\"gregtech.bee.speciesAmericium\"" = lib.mkOption {
                      type = lib.types.str;
                      default = "REQUIREMENTS";
                    };
                    "\"gregtech.bee.speciesEuropium\"" = lib.mkOption {
                      type = lib.types.str;
                      default = "REQUIREMENTS";
                    };
                    "\"gregtech.bee.speciesKevlar\"" = lib.mkOption {
                      type = lib.types.str;
                      default = "REQUIREMENTS";
                    };
                    "\"gregtech.bee.speciesDrake\"" = lib.mkOption {
                      type = lib.types.str;
                      default = "REQUIREMENTS";
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
  overrides_upgrades = lib.mkOption {
    description = "overrides_upgrades configuration (./config/gendustry/overrides/upgrades.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/gendustry/overrides/upgrades.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge_untyped";
        readOnly = true;
        };
        "//" = lib.mkOption {
          type = lib.types.str;
          default = "== INDUSTRIAL APIARY UPGRADES ===";
        };
        "cfg Upgrades" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "cfg prod" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    id = lib.mkOption {
                      type = lib.types.str;
                      default = "0";
                    };
                    max = lib.mkOption {
                      type = lib.types.str;
                      default = "8";
                    };
                    "production *" = lib.mkOption {
                      type = lib.types.str;
                      default = "1.2";
                    };
                    "energy *" = lib.mkOption {
                      type = lib.types.str;
                      default = "1.4";
                    };
                  };
                };
              };
              "cfg life" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    id = lib.mkOption {
                      type = lib.types.str;
                      default = "1";
                    };
                    max = lib.mkOption {
                      type = lib.types.str;
                      default = "4";
                    };
                    "energy *" = lib.mkOption {
                      type = lib.types.str;
                      default = "1.05";
                    };
                    "lifespan /" = lib.mkOption {
                      type = lib.types.str;
                      default = "1.5";
                    };
                  };
                };
              };
              "cfg flowering" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    id = lib.mkOption {
                      type = lib.types.str;
                      default = "2";
                    };
                    max = lib.mkOption {
                      type = lib.types.str;
                      default = "8";
                    };
                    "energy *" = lib.mkOption {
                      type = lib.types.str;
                      default = "1.1";
                    };
                    "flowering *" = lib.mkOption {
                      type = lib.types.str;
                      default = "1.2";
                    };
                  };
                };
              };
              "cfg territory" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    id = lib.mkOption {
                      type = lib.types.str;
                      default = "3";
                    };
                    max = lib.mkOption {
                      type = lib.types.str;
                      default = "4";
                    };
                    "energy *" = lib.mkOption {
                      type = lib.types.str;
                      default = "1.05";
                    };
                    "territory *" = lib.mkOption {
                      type = lib.types.str;
                      default = "1.5";
                    };
                  };
                };
              };
              "cfg humidifier" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    id = lib.mkOption {
                      type = lib.types.str;
                      default = "4";
                    };
                    max = lib.mkOption {
                      type = lib.types.str;
                      default = "8";
                    };
                    "energy *" = lib.mkOption {
                      type = lib.types.str;
                      default = "1.05";
                    };
                    "humidity +" = lib.mkOption {
                      type = lib.types.str;
                      default = "0.25";
                    };
                  };
                };
              };
              "cfg dryer" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    id = lib.mkOption {
                      type = lib.types.str;
                      default = "5";
                    };
                    max = lib.mkOption {
                      type = lib.types.str;
                      default = "8";
                    };
                    "energy *" = lib.mkOption {
                      type = lib.types.str;
                      default = "1.05";
                    };
                    "humidity -" = lib.mkOption {
                      type = lib.types.str;
                      default = "0.25";
                    };
                  };
                };
              };
              "cfg heater" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    id = lib.mkOption {
                      type = lib.types.str;
                      default = "6";
                    };
                    max = lib.mkOption {
                      type = lib.types.str;
                      default = "8";
                    };
                    "energy *" = lib.mkOption {
                      type = lib.types.str;
                      default = "1.05";
                    };
                    "temperature +" = lib.mkOption {
                      type = lib.types.str;
                      default = "0.25";
                    };
                  };
                };
              };
              "cfg cooler" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    id = lib.mkOption {
                      type = lib.types.str;
                      default = "7";
                    };
                    max = lib.mkOption {
                      type = lib.types.str;
                      default = "8";
                    };
                    "energy *" = lib.mkOption {
                      type = lib.types.str;
                      default = "1.05";
                    };
                    "temperature -" = lib.mkOption {
                      type = lib.types.str;
                      default = "0.25";
                    };
                  };
                };
              };
              "cfg sealing" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    id = lib.mkOption {
                      type = lib.types.str;
                      default = "10";
                    };
                    max = lib.mkOption {
                      type = lib.types.str;
                      default = "1";
                    };
                    "energy *" = lib.mkOption {
                      type = lib.types.str;
                      default = "1.05";
                    };
                    sealed = lib.mkOption {
                      type = lib.types.str;
                      default = "Y";
                    };
                  };
                };
              };
              "cfg light" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    id = lib.mkOption {
                      type = lib.types.str;
                      default = "11";
                    };
                    max = lib.mkOption {
                      type = lib.types.str;
                      default = "1";
                    };
                    "energy *" = lib.mkOption {
                      type = lib.types.str;
                      default = "1.05";
                    };
                    selfLighted = lib.mkOption {
                      type = lib.types.str;
                      default = "Y";
                    };
                  };
                };
              };
              "cfg sky" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    id = lib.mkOption {
                      type = lib.types.str;
                      default = "12";
                    };
                    max = lib.mkOption {
                      type = lib.types.str;
                      default = "1";
                    };
                    "energy *" = lib.mkOption {
                      type = lib.types.str;
                      default = "1.05";
                    };
                    sunlightSimulated = lib.mkOption {
                      type = lib.types.str;
                      default = "Y";
                    };
                  };
                };
              };
              "cfg hell" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    id = lib.mkOption {
                      type = lib.types.str;
                      default = "13";
                    };
                    max = lib.mkOption {
                      type = lib.types.str;
                      default = "1";
                    };
                    "energy *" = lib.mkOption {
                      type = lib.types.str;
                      default = "1.5";
                    };
                    biomeOverride = lib.mkOption {
                      type = lib.types.str;
                      default = "Hell";
                    };
                  };
                };
              };
              "cfg auto" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    id = lib.mkOption {
                      type = lib.types.str;
                      default = "14";
                    };
                    max = lib.mkOption {
                      type = lib.types.str;
                      default = "1";
                    };
                    "energy *" = lib.mkOption {
                      type = lib.types.str;
                      default = "1.1";
                    };
                    automated = lib.mkOption {
                      type = lib.types.str;
                      default = "Y";
                    };
                  };
                };
              };
              "cfg sieve" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    id = lib.mkOption {
                      type = lib.types.str;
                      default = "15";
                    };
                    max = lib.mkOption {
                      type = lib.types.str;
                      default = "1";
                    };
                    "energy *" = lib.mkOption {
                      type = lib.types.str;
                      default = "1.25";
                    };
                    collectingPollen = lib.mkOption {
                      type = lib.types.str;
                      default = "Y";
                    };
                  };
                };
              };
              "cfg desert" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    id = lib.mkOption {
                      type = lib.types.str;
                      default = "16";
                    };
                    max = lib.mkOption {
                      type = lib.types.str;
                      default = "1";
                    };
                    "energy *" = lib.mkOption {
                      type = lib.types.str;
                      default = "1.20";
                    };
                    biomeOverride = lib.mkOption {
                      type = lib.types.str;
                      default = "Desert";
                    };
                  };
                };
              };
              "cfg plains" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    id = lib.mkOption {
                      type = lib.types.str;
                      default = "17";
                    };
                    max = lib.mkOption {
                      type = lib.types.str;
                      default = "1";
                    };
                    "energy *" = lib.mkOption {
                      type = lib.types.str;
                      default = "1.20";
                    };
                    biomeOverride = lib.mkOption {
                      type = lib.types.str;
                      default = "Plains";
                    };
                  };
                };
              };
              "cfg jungle" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    id = lib.mkOption {
                      type = lib.types.str;
                      default = "18";
                    };
                    max = lib.mkOption {
                      type = lib.types.str;
                      default = "1";
                    };
                    "energy *" = lib.mkOption {
                      type = lib.types.str;
                      default = "1.20";
                    };
                    biomeOverride = lib.mkOption {
                      type = lib.types.str;
                      default = "Jungle";
                    };
                  };
                };
              };
              "cfg stabilizer" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    id = lib.mkOption {
                      type = lib.types.str;
                      default = "19";
                    };
                    max = lib.mkOption {
                      type = lib.types.str;
                      default = "1";
                    };
                    "energy *" = lib.mkOption {
                      type = lib.types.str;
                      default = "2.5";
                    };
                    "geneticDecay *" = lib.mkOption {
                      type = lib.types.str;
                      default = "0";
                    };
                  };
                };
              };
              "cfg winter" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    id = lib.mkOption {
                      type = lib.types.str;
                      default = "20";
                    };
                    max = lib.mkOption {
                      type = lib.types.str;
                      default = "1";
                    };
                    "energy *" = lib.mkOption {
                      type = lib.types.str;
                      default = "1.5";
                    };
                    biomeOverride = lib.mkOption {
                      type = lib.types.str;
                      default = "Taiga";
                    };
                  };
                };
              };
              "cfg ocean" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    id = lib.mkOption {
                      type = lib.types.str;
                      default = "21";
                    };
                    max = lib.mkOption {
                      type = lib.types.str;
                      default = "1";
                    };
                    "energy *" = lib.mkOption {
                      type = lib.types.str;
                      default = "1.20";
                    };
                    biomeOverride = lib.mkOption {
                      type = lib.types.str;
                      default = "Ocean";
                    };
                  };
                };
              };
              "cfg scrubber" = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    id = lib.mkOption {
                      type = lib.types.str;
                      default = "22";
                    };
                    max = lib.mkOption {
                      type = lib.types.str;
                      default = "1";
                    };
                    "energy *" = lib.mkOption {
                      type = lib.types.str;
                      default = "1.3";
                    };
                    "flowering *" = lib.mkOption {
                      type = lib.types.str;
                      default = "0";
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
