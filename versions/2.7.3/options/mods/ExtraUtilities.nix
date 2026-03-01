{lib, ...}: {
  ExtraUtilities = lib.mkOption {
    description = "ExtraUtilities configuration (./config/ExtraUtilities.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ExtraUtilities.cfg";
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
              AngelBlockEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              BUDBlockEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              BedrockiumBlockEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              ChandelierEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              CobblestoneComprEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              ColorBlockDataEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              ConveyorEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              CursedEarthEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              CurtainEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Decorative_1Enabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Decorative_2Enabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              DrumEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EnderCollectorEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EnderLilyEnabled = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EnderMarkerEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EnderQuarryEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EnderQuarryUpgradeEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EnderThermicPumpEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EtherealBlockEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              FilingCabinetEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Generator64Enabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Generator8Enabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              GeneratorEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              GreenScreenEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              MagnumTorchEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              MiniChestEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              PeacefultableEnabled = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              PortalEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              PureLoveBlockEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              QEDEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              SlightlyLargerChestEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              SoundMufflerEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              SpikeDiamondEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              SpikeEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              SpikeGoldEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              SpikeWoodEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              TimerBlockEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              TradingPostEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              TransferNodeEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              TransferNodeRemoteEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              TransferPipeEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              TrashCanEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        client_options = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              disablePortalAnimation = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
            };
          };
        };
        "ender quarry power" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              baseDrain = lib.mkOption {
                type = lib.types.int;
                default = 28800;
              };
              hardnessDrain = lib.mkOption {
                type = lib.types.int;
                default = 2800;
              };
            };
          };
        };
        items = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              AngelRingEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              BedrockiumIngotEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              BuildersWandEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              CreativeBuildersWandEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              DestructionPickaxeEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              DivisionSigilEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              ErosionShovelEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EthericSwordEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              GloveEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              GoldenBagEnabled = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              GoldenLassoEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              HealingAxeEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              HeatingCoilEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              LawSwordEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              MicroBlocksEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              PaintBrushEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              PrecisionShearsIdEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              ScannerEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              SonarGogglesEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              SoulEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              TemporalHoeEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              UnstableIngotEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              UpgradeNodeEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              WateringCanEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        options = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              EnderPumpDimensionExceptions = lib.mkOption {
                type = lib.types.listOf lib.types.int;
                default = [ ];
              };
              deepDarkDimensionID = lib.mkOption {
                type = lib.types.int;
                default = 100;
              };
              disableEnderPumpInAllDimensions = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              disableMultiBlocksCreativeTab = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              disableTransferNodeCobblegen = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              disableTransferNodeParticles = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              disableTransferNodeWatergen = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              disableWitherNoisesIfNotNearby = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              lastMilleniumDimensionID = lib.mkOption {
                type = lib.types.int;
                default = 112;
              };
              peacefulTableInAllDifficulties = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              soulDrainResetsOnDeath = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              unstableIngotsExplode = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
            };
          };
        };
        qedcrafting = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              QEDItems = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ ];
                description = "ItemStack names to enforce crafting in the QED";
              };
              QEDVersion = lib.mkOption {
                type = lib.types.int;
                default = 3;
                description = "Internal version number to add/remove items in future updates. Set to -1 to disable auto-updates.";
              };
            };
          };
        };
        recipes = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              disableAdvFilingCabinet = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              disableAltChestRecipe = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              disableBuildersWandRecipe = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              disableChandelierRecipe = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              disableColoredBlocksRecipes = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              disableCompressedCobblestoneRecipe = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              disableConveyorRecipe = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              disableCurtainRecipe = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              disableDestructionPickaxeRecipe = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              disableDivisionSiginInChests = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              disableDrumRecipe = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              disableEnderLiliesInDungeons = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              disableEnderQuarryUpgradesRecipes = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              disableEnderThermicPumpRecipe = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              disableEnergyExtractionPipeRecipe = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              disableEnergyPipeRecipe = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              disableErosionShovelRecipe = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              disableEtherealGlassRecipe = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              disableEthericSwordRecipe = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              disableFilingCabinet = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              disableFilterPipeRecipe = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              disableFilterRecipe = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              disableGeneratorRecipe = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              disableGoldenBagRecipe = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              disableGoldenLassoRecipe = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              disableHealingAxeRecipe = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              disableMagnumTorchRecipe = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              disableModSortingPipeRecipe = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              disableNodeUpgradeSpeedRecipe = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              disablePaintbrushRecipe = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              disablePeacefulTableRecipe = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              disablePeacefulWitherRecipe = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              disableQEDIngotSmeltRecipes = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              disableRainMufflerRecipe = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              disableRationingPipeRecipe = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              disableRedstoneClockRecipe = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              disableRetrievalNodeLiquidRecipe = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              disableRetrievalNodeRecipe = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              disableReversingHoeRecipe = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              disableSonarGogglesRecipe = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              disableSortingPipeRecipe = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              disableSoundMufflerRecipe = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              disableSpikeRecipe = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              disableSuperWateringCanRecipe = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              disableTradingPostRecipe = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              disableTransferNodeEnergyRecipe = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              disableTransferNodeLiquidRecipe = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              disableTransferNodeRecipe = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              disableTransferPipeRecipe = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              disableTrashCanRecipe = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              disableUnstableIngotRecipe = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              disableWateringCanRecipe = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
            };
          };
        };
        tinkersintegration = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              tcon_bedrock_material_id = lib.mkOption {
                type = lib.types.int;
                default = 315;
              };
              tcon_magical_wood_id = lib.mkOption {
                type = lib.types.int;
                default = 316;
              };
              tcon_unstable_material_id = lib.mkOption {
                type = lib.types.int;
                default = 314;
              };
            };
          };
        };
        worldgen = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              retrogen_enderlillies = lib.mkOption {
                type = lib.types.int;
                default = 0;
              };
            };
          };
        };
      };
    };
  };
}
