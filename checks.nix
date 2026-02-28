{self, ...}: {
  perSystem = {
    config,
    pkgs,
    lib,
    ...
  }: let
    inherit (import ./lib.nix {inherit lib pkgs;}) mkConfigFile;

    # Evaluate the gtnh NixOS module with all defaults so we can extract
    # config values for comparison checks.
    moduleEval = lib.evalModules {
      modules = [
        self.nixosModules.gtnh
        {
          _module.args.pkgs = pkgs;
          _module.check = false;
          programs.gtnh.enable = true;
        }
      ];
    };

    # Build a derivation that passes iff the rendered config file
    # semantically matches the corresponding file in the 2.8.4 pack.
    # Normalisation: strip comments, blank lines, whitespace, quotes, and
    # type prefixes (B:/I:/D:/S:) then sort — so only key names and values
    # are compared, not formatting.
    mkCfgCheck = name: cfgValue: relPath: let
      rendered = mkConfigFile cfgValue;
      original = "${config.packages."gtnh-2.8.4"}/${relPath}";
    in
      # temp removed
      # | sed 's/^[BIDS]://' \
      pkgs.runCommand "check-cfg-${name}" {} ''
        normalize() {
          grep -v '^\s*#' "$1" \
            | grep -v '^\s*$' \
            | grep -v '^\s*~' \
            | awk '{ if (prev != "" && /^\s*\{\s*$/) { print prev " {"; prev=""; next } if (prev != "") print prev; prev=$0 } END { if (prev != "") print prev }' \
            | tr -d ' \t"' \
            | awk '/<$/{skip=1;next} skip&&/^>$/{skip=0;next} skip{next} {print}' \
            | sed 's/[Ee]\([+-]\)0*\([0-9]\)/e\1\2/g' \
            | awk '/[0-9]+\.[0-9]+$/ { sub(/0+$/, ""); sub(/\.$/, "") } { print }' \
            | sort -u \
            || true
        }
        normalize "${original}"  > orig_norm
        normalize "${rendered}" > rendered_norm
        if ! diff orig_norm rendered_norm; then
          echo ""
          echo "FAIL: rendered ${name} does not match ${relPath} from gtnh-2.8.4"
          exit 1
        fi
        touch $out
      '';
  in {
    checks = {
      serverutilities-cfg =
        mkCfgCheck
        "serverutilities-cfg"
        moduleEval.config.programs.gtnh.mods.ServerUtilities.ServerUtilities
        "serverutilities/serverutilities.cfg";

      aurora-cfg =
        mkCfgCheck
        "aurora-cfg"
        moduleEval.config.programs.gtnh.mods.ServerUtilities.Aurora
        "serverutilities/aurora.cfg";

      gregtech-client-cfg =
        mkCfgCheck
        "gregtech-client-cfg"
        moduleEval.config.programs.gtnh.mods.GregTech.Client
        "config/GregTech/Client.cfg";

      gregtech-pollution-cfg =
        mkCfgCheck
        "gregtech-pollution-cfg"
        moduleEval.config.programs.gtnh.mods.GregTech.Pollution
        "config/GregTech/Pollution.cfg";

      gregtech-cfg =
        mkCfgCheck
        "gregtech-cfg"
        moduleEval.config.programs.gtnh.mods.GregTech.GregTech
        "config/GregTech/GregTech.cfg";

      gregtech-machinestats-cfg =
        mkCfgCheck
        "gregtech-machinestats-cfg"
        moduleEval.config.programs.gtnh.mods.GregTech.MachineStats
        "config/GregTech/MachineStats.cfg";

      gregtech-other-cfg =
        mkCfgCheck
        "gregtech-other-cfg"
        moduleEval.config.programs.gtnh.mods.GregTech.Other
        "config/GregTech/Other.cfg";

      gregtech-overpoweredstuff-cfg =
        mkCfgCheck
        "gregtech-overpoweredstuff-cfg"
        moduleEval.config.programs.gtnh.mods.GregTech.OverpoweredStuff
        "config/GregTech/OverpoweredStuff.cfg";

      gregtech-worldgeneration-cfg =
        mkCfgCheck
        "gregtech-worldgeneration-cfg"
        moduleEval.config.programs.gtnh.mods.GregTech.WorldGeneration
        "config/GregTech/WorldGeneration.cfg";
      afsu-afsu-cfg =
        mkCfgCheck
        "afsu-afsu-cfg"
        moduleEval.config.programs.gtnh.mods.AFSU.AFSU
        "config/AFSU.cfg";
      awwayof-time-awwayof-time-cfg =
        mkCfgCheck
        "awwayof-time-awwayof-time-cfg"
        moduleEval.config.programs.gtnh.mods.AWWayofTime.AWWayofTime
        "config/AWWayofTime.cfg";
      advanced-solar-panel-advanced-solar-panel-cfg =
        mkCfgCheck
        "advanced-solar-panel-advanced-solar-panel-cfg"
        moduleEval.config.programs.gtnh.mods.AdvancedSolarPanel.AdvancedSolarPanel
        "config/AdvancedSolarPanel.cfg";
      apple-core-apple-core-cfg =
        mkCfgCheck
        "apple-core-apple-core-cfg"
        moduleEval.config.programs.gtnh.mods.AppleCore.AppleCore
        "config/AppleCore.cfg";
      applied-energistics2-applied-energistics2-cfg =
        mkCfgCheck
        "applied-energistics2-applied-energistics2-cfg"
        moduleEval.config.programs.gtnh.mods.AppliedEnergistics2.AppliedEnergistics2
        "config/AppliedEnergistics2/AppliedEnergistics2.cfg";
      applied-energistics2-extracells-cfg =
        mkCfgCheck
        "applied-energistics2-extracells-cfg"
        moduleEval.config.programs.gtnh.mods.AppliedEnergistics2.extracells
        "config/AppliedEnergistics2/extracells.cfg";
      architecture-craft-architecture-craft-cfg =
        mkCfgCheck
        "architecture-craft-architecture-craft-cfg"
        moduleEval.config.programs.gtnh.mods.ArchitectureCraft.ArchitectureCraft
        "config/ArchitectureCraft.cfg";
      automagy-automagy-cfg =
        mkCfgCheck
        "automagy-automagy-cfg"
        moduleEval.config.programs.gtnh.mods.Automagy.Automagy
        "config/Automagy.cfg";
      avaritia-avaritia-cfg =
        mkCfgCheck
        "avaritia-avaritia-cfg"
        moduleEval.config.programs.gtnh.mods.Avaritia.Avaritia
        "config/Avaritia.cfg";
      avaritiaddons-avaritiaddons-cfg =
        mkCfgCheck
        "avaritiaddons-avaritiaddons-cfg"
        moduleEval.config.programs.gtnh.mods.Avaritiaddons.Avaritiaddons
        "config/Avaritiaddons.cfg";
      backpack-backpack-cfg =
        mkCfgCheck
        "backpack-backpack-cfg"
        moduleEval.config.programs.gtnh.mods.Backpack.Backpack
        "config/Backpack.cfg";
      baubles-baubles-cfg =
        mkCfgCheck
        "baubles-baubles-cfg"
        moduleEval.config.programs.gtnh.mods.Baubles.Baubles
        "config/Baubles.cfg";
      better-achievements-better-achievements-cfg =
        mkCfgCheck
        "better-achievements-better-achievements-cfg"
        moduleEval.config.programs.gtnh.mods.BetterAchievements.BetterAchievements
        "config/BetterAchievements.cfg";
      betterloadingscreen-betterloadingscreen-cfg =
        mkCfgCheck
        "betterloadingscreen-betterloadingscreen-cfg"
        moduleEval.config.programs.gtnh.mods.Betterloadingscreen.betterloadingscreen
        "config/Betterloadingscreen/betterloadingscreen.cfg";
      biblio-craft-biblio-craft-cfg =
        mkCfgCheck
        "biblio-craft-biblio-craft-cfg"
        moduleEval.config.programs.gtnh.mods.BiblioCraft.BiblioCraft
        "config/BiblioCraft.cfg";
      blood-arsenal-blood-arsenal-cfg =
        mkCfgCheck
        "blood-arsenal-blood-arsenal-cfg"
        moduleEval.config.programs.gtnh.mods.BloodArsenal.BloodArsenal
        "config/BloodArsenal.cfg";
      botania-botania-cfg =
        mkCfgCheck
        "botania-botania-cfg"
        moduleEval.config.programs.gtnh.mods.Botania.Botania
        "config/Botania.cfg";
      carpenters-blocks-carpenters-blocks-cfg =
        mkCfgCheck
        "carpenters-blocks-carpenters-blocks-cfg"
        moduleEval.config.programs.gtnh.mods.CarpentersBlocks.CarpentersBlocks
        "config/CarpentersBlocks.cfg";
      chisel-tones-chisel-tones-cfg =
        mkCfgCheck
        "chisel-tones-chisel-tones-cfg"
        moduleEval.config.programs.gtnh.mods.ChiselTones.ChiselTones
        "config/ChiselTones.cfg";
      climate-control-ccdimensions-cfg =
        mkCfgCheck
        "climate-control-ccdimensions-cfg"
        moduleEval.config.programs.gtnh.mods.ClimateControl.CCDimensions
        "config/ClimateControl/CCDimensions.cfg";
      climate-control-thaumcraft-in-cc-cfg =
        mkCfgCheck
        "climate-control-thaumcraft-in-cc-cfg"
        moduleEval.config.programs.gtnh.mods.ClimateControl.ThaumcraftInCC
        "config/ClimateControl/ThaumcraftInCC.cfg";
      climate-control-biomesoplenty-in-cc-cfg =
        mkCfgCheck
        "climate-control-biomesoplenty-in-cc-cfg"
        moduleEval.config.programs.gtnh.mods.ClimateControl.biomesoplentyInCC
        "config/ClimateControl/biomesoplentyInCC.cfg";
      draconic-evolution-draconic-evolution-cfg =
        mkCfgCheck
        "draconic-evolution-draconic-evolution-cfg"
        moduleEval.config.programs.gtnh.mods.DraconicEvolution.DraconicEvolution
        "config/DraconicEvolution.cfg";
      draconic-evolution-balance-cfg =
        mkCfgCheck
        "draconic-evolution-balance-cfg"
        moduleEval.config.programs.gtnh.mods.DraconicEvolutionBalance."DraconicEvolution.Balance"
        "config/DraconicEvolution.Balance.cfg";
      emt-emt-cfg =
        mkCfgCheck
        "emt-emt-cfg"
        moduleEval.config.programs.gtnh.mods.EMT.EMT
        "config/EMT.cfg";
      ender-storage-ender-storage-cfg =
        mkCfgCheck
        "ender-storage-ender-storage-cfg"
        moduleEval.config.programs.gtnh.mods.EnderStorage.EnderStorage
        "config/EnderStorage.cfg";
      extended-pasupport-extended-pasupport-cfg =
        mkCfgCheck
        "extended-pasupport-extended-pasupport-cfg"
        moduleEval.config.programs.gtnh.mods.ExtendedPASupport.ExtendedPASupport
        "config/ExtendedPASupport.cfg";
      extra-bees-extra-bees-cfg =
        mkCfgCheck
        "extra-bees-extra-bees-cfg"
        moduleEval.config.programs.gtnh.mods.ExtraBees.ExtraBees
        "config/ExtraBees.cfg";
      extra-trees-extra-trees-cfg =
        mkCfgCheck
        "extra-trees-extra-trees-cfg"
        moduleEval.config.programs.gtnh.mods.ExtraTrees.ExtraTrees
        "config/ExtraTrees.cfg";
      extra-utilities-extra-utilities-cfg =
        mkCfgCheck
        "extra-utilities-extra-utilities-cfg"
        moduleEval.config.programs.gtnh.mods.ExtraUtilities.ExtraUtilities
        "config/ExtraUtilities.cfg";
      flood-lights-flood-lights-cfg =
        mkCfgCheck
        "flood-lights-flood-lights-cfg"
        moduleEval.config.programs.gtnh.mods.FloodLights.FloodLights
        "config/FloodLights.cfg";
      forbidden-magic-forbidden-magic-cfg =
        mkCfgCheck
        "forbidden-magic-forbidden-magic-cfg"
        moduleEval.config.programs.gtnh.mods.ForbiddenMagic.ForbiddenMagic
        "config/ForbiddenMagic.cfg";
      forge-relocation-forge-relocation-cfg =
        mkCfgCheck
        "forge-relocation-forge-relocation-cfg"
        moduleEval.config.programs.gtnh.mods.ForgeRelocation.ForgeRelocation
        "config/ForgeRelocation.cfg";
      gtnew-horizons-angermod-cfg =
        mkCfgCheck
        "gtnew-horizons-angermod-cfg"
        moduleEval.config.programs.gtnh.mods.GTNewHorizons.angermod
        "config/GTNewHorizons/angermod.cfg";
      gtnew-horizons-blocklimiter-cfg =
        mkCfgCheck
        "gtnew-horizons-blocklimiter-cfg"
        moduleEval.config.programs.gtnh.mods.GTNewHorizons.blocklimiter
        "config/GTNewHorizons/blocklimiter.cfg";
      gtnew-horizons-dreamcraft-cfg =
        mkCfgCheck
        "gtnew-horizons-dreamcraft-cfg"
        moduleEval.config.programs.gtnh.mods.GTNewHorizons.dreamcraft
        "config/GTNewHorizons/dreamcraft.cfg";
      gtplus-plus-asm-cfg =
        mkCfgCheck
        "gtplus-plus-asm-cfg"
        moduleEval.config.programs.gtnh.mods.GTPlusPlus.ASM
        "config/GTPlusPlus/ASM.cfg";
      gtplus-plus-gtplus-plus-cfg =
        mkCfgCheck
        "gtplus-plus-gtplus-plus-cfg"
        moduleEval.config.programs.gtnh.mods.GTPlusPlus.GTPlusPlus
        "config/GTPlusPlus/GTPlusPlus.cfg";
      galactic-greg-galactic-greg-cfg =
        mkCfgCheck
        "galactic-greg-galactic-greg-cfg"
        moduleEval.config.programs.gtnh.mods.GalacticGreg.GalacticGreg
        "config/GalacticGreg/GalacticGreg.cfg";
      galacticraft-amun-ra-galacticraft-amun-ra-cfg =
        mkCfgCheck
        "galacticraft-amun-ra-galacticraft-amun-ra-cfg"
        moduleEval.config.programs.gtnh.mods.GalacticraftAmunRa.GalacticraftAmunRa
        "config/GalacticraftAmunRa.cfg";
      gravi-suite-gravi-suite-cfg =
        mkCfgCheck
        "gravi-suite-gravi-suite-cfg"
        moduleEval.config.programs.gtnh.mods.GraviSuite.GraviSuite
        "config/GraviSuite.cfg";
      hardcore-ender-expansion-hardcore-ender-expansion-cfg =
        mkCfgCheck
        "hardcore-ender-expansion-hardcore-ender-expansion-cfg"
        moduleEval.config.programs.gtnh.mods.HardcoreEnderExpansion.HardcoreEnderExpansion
        "config/HardcoreEnderExpansion.cfg";
      hunger-overhaul-hunger-overhaul-cfg =
        mkCfgCheck
        "hunger-overhaul-hunger-overhaul-cfg"
        moduleEval.config.programs.gtnh.mods.HungerOverhaul.HungerOverhaul
        "config/HungerOverhaul/HungerOverhaul.cfg";
      hunger-overhaul-default-cfg =
        mkCfgCheck
        "hunger-overhaul-default-cfg"
        moduleEval.config.programs.gtnh.mods.HungerOverhaul.default
        "config/HungerOverhaul/default.cfg";
      ic2-nuclear-control-ic2-nuclear-control-cfg =
        mkCfgCheck
        "ic2-nuclear-control-ic2-nuclear-control-cfg"
        moduleEval.config.programs.gtnh.mods.IC2NuclearControl.IC2NuclearControl
        "config/IC2NuclearControl.cfg";
      igwmod-igwmod-cfg =
        mkCfgCheck
        "igwmod-igwmod-cfg"
        moduleEval.config.programs.gtnh.mods.IGWMod.IGWMod
        "config/IGWMod.cfg";
      ic2-nei-ic2-nei-cfg =
        mkCfgCheck
        "ic2-nei-ic2-nei-cfg"
        moduleEval.config.programs.gtnh.mods.Ic2Nei.Ic2Nei
        "config/Ic2Nei.cfg";
      iguana-tinker-tweaks-block-defaults-cfg =
        mkCfgCheck
        "iguana-tinker-tweaks-block-defaults-cfg"
        moduleEval.config.programs.gtnh.mods.IguanaTinkerTweaks.BlockDefaults
        "config/IguanaTinkerTweaks/BlockDefaults.cfg";
      iguana-tinker-tweaks-block-override-cfg =
        mkCfgCheck
        "iguana-tinker-tweaks-block-override-cfg"
        moduleEval.config.programs.gtnh.mods.IguanaTinkerTweaks.BlockOverride
        "config/IguanaTinkerTweaks/BlockOverride.cfg";
      iguana-tinker-tweaks-bonus-modifier-defaults-cfg =
        mkCfgCheck
        "iguana-tinker-tweaks-bonus-modifier-defaults-cfg"
        moduleEval.config.programs.gtnh.mods.IguanaTinkerTweaks.BonusModifierDefaults
        "config/IguanaTinkerTweaks/BonusModifierDefaults.cfg";
      iguana-tinker-tweaks-bonus-modifier-override-cfg =
        mkCfgCheck
        "iguana-tinker-tweaks-bonus-modifier-override-cfg"
        moduleEval.config.programs.gtnh.mods.IguanaTinkerTweaks.BonusModifierOverride
        "config/IguanaTinkerTweaks/BonusModifierOverride.cfg";
      iguana-tinker-tweaks-harvest-level-names-defaults-cfg =
        mkCfgCheck
        "iguana-tinker-tweaks-harvest-level-names-defaults-cfg"
        moduleEval.config.programs.gtnh.mods.IguanaTinkerTweaks.HarvestLevelNamesDefaults
        "config/IguanaTinkerTweaks/HarvestLevelNamesDefaults.cfg";
      iguana-tinker-tweaks-harvest-level-names-override-cfg =
        mkCfgCheck
        "iguana-tinker-tweaks-harvest-level-names-override-cfg"
        moduleEval.config.programs.gtnh.mods.IguanaTinkerTweaks.HarvestLevelNamesOverride
        "config/IguanaTinkerTweaks/HarvestLevelNamesOverride.cfg";
      iguana-tinker-tweaks-material-defaults-cfg =
        mkCfgCheck
        "iguana-tinker-tweaks-material-defaults-cfg"
        moduleEval.config.programs.gtnh.mods.IguanaTinkerTweaks.MaterialDefaults
        "config/IguanaTinkerTweaks/MaterialDefaults.cfg";
      iguana-tinker-tweaks-material-override-cfg =
        mkCfgCheck
        "iguana-tinker-tweaks-material-override-cfg"
        moduleEval.config.programs.gtnh.mods.IguanaTinkerTweaks.MaterialOverride
        "config/IguanaTinkerTweaks/MaterialOverride.cfg";
      iguana-tinker-tweaks-modules-cfg =
        mkCfgCheck
        "iguana-tinker-tweaks-modules-cfg"
        moduleEval.config.programs.gtnh.mods.IguanaTinkerTweaks.Modules
        "config/IguanaTinkerTweaks/Modules.cfg";
      iguana-tinker-tweaks-tool-defaults-cfg =
        mkCfgCheck
        "iguana-tinker-tweaks-tool-defaults-cfg"
        moduleEval.config.programs.gtnh.mods.IguanaTinkerTweaks.ToolDefaults
        "config/IguanaTinkerTweaks/ToolDefaults.cfg";
      iguana-tinker-tweaks-tool-override-cfg =
        mkCfgCheck
        "iguana-tinker-tweaks-tool-override-cfg"
        moduleEval.config.programs.gtnh.mods.IguanaTinkerTweaks.ToolOverride
        "config/IguanaTinkerTweaks/ToolOverride.cfg";
      iguana-tinker-tweaks-main-cfg =
        mkCfgCheck
        "iguana-tinker-tweaks-main-cfg"
        moduleEval.config.programs.gtnh.mods.IguanaTinkerTweaks.main
        "config/IguanaTinkerTweaks/main.cfg";
      iguana-tinker-tweaks-restrictions-cfg =
        mkCfgCheck
        "iguana-tinker-tweaks-restrictions-cfg"
        moduleEval.config.programs.gtnh.mods.IguanaTinkerTweaks.restrictions
        "config/IguanaTinkerTweaks/restrictions.cfg";
      in-game-info-xml-in-game-info-xml-cfg =
        mkCfgCheck
        "in-game-info-xml-in-game-info-xml-cfg"
        moduleEval.config.programs.gtnh.mods.InGameInfoXML.InGameInfoXML
        "config/InGameInfoXML.cfg";
      infernal-mobs-infernal-mobs-cfg =
        mkCfgCheck
        "infernal-mobs-infernal-mobs-cfg"
        moduleEval.config.programs.gtnh.mods.InfernalMobs.InfernalMobs
        "config/InfernalMobs.cfg";
      iron-chest-iron-chest-cfg =
        mkCfgCheck
        "iron-chest-iron-chest-cfg"
        moduleEval.config.programs.gtnh.mods.IronChest.IronChest
        "config/IronChest.cfg";
      jabba-jabba-cfg =
        mkCfgCheck
        "jabba-jabba-cfg"
        moduleEval.config.programs.gtnh.mods.JABBA.JABBA
        "config/JABBA.cfg";
      logistics-pipes-logistics-pipes-cfg =
        mkCfgCheck
        "logistics-pipes-logistics-pipes-cfg"
        moduleEval.config.programs.gtnh.mods.LogisticsPipes.LogisticsPipes
        "config/LogisticsPipes.cfg";
      mcframes-mcframes-cfg =
        mkCfgCheck
        "mcframes-mcframes-cfg"
        moduleEval.config.programs.gtnh.mods.MCFrames.MCFrames
        "config/MCFrames.cfg";
      magic-bees-magic-bees-cfg =
        mkCfgCheck
        "magic-bees-magic-bees-cfg"
        moduleEval.config.programs.gtnh.mods.MagicBees.MagicBees
        "config/MagicBees.cfg";
      mouse-tweaks-mouse-tweaks-cfg =
        mkCfgCheck
        "mouse-tweaks-mouse-tweaks-cfg"
        moduleEval.config.programs.gtnh.mods.MouseTweaks.MouseTweaks
        "config/MouseTweaks.cfg";
      nei-client-cfg =
        mkCfgCheck
        "nei-client-cfg"
        moduleEval.config.programs.gtnh.mods.NEI.client
        "config/NEI/client.cfg";
      # nei-heighthackhandlers-cfg: custom class-list format, not Forge key=value
      # nei-hiddenitems-cfg: custom NEI filter format, not Forge key=value
      # nei-serialhandlers-cfg: empty file

      neiaddons-neiaddons-cfg =
        mkCfgCheck
        "neiaddons-neiaddons-cfg"
        moduleEval.config.programs.gtnh.mods.NEIAddons.NEIAddons
        "config/NEIAddons.cfg";
      neid-neid-cfg =
        mkCfgCheck
        "neid-neid-cfg"
        moduleEval.config.programs.gtnh.mods.NEID.NEID
        "config/NEID.cfg";
      natura-natura-cfg =
        mkCfgCheck
        "natura-natura-cfg"
        moduleEval.config.programs.gtnh.mods.Natura.Natura
        "config/Natura.cfg";
      open-blocks-open-blocks-cfg =
        mkCfgCheck
        "open-blocks-open-blocks-cfg"
        moduleEval.config.programs.gtnh.mods.OpenBlocks.OpenBlocks
        "config/OpenBlocks.cfg";
      # open-computers-open-computers-cfg: HOCON format with multi-line lists, not Forge key=value

      open-mods-open-mods-cfg =
        mkCfgCheck
        "open-mods-open-mods-cfg"
        moduleEval.config.programs.gtnh.mods.OpenMods.OpenMods
        "config/OpenMods.cfg";
      # project-blue-project-blue-cfg: empty file, check removed

      project-red-project-red-cfg =
        mkCfgCheck
        "project-red-project-red-cfg"
        moduleEval.config.programs.gtnh.mods.ProjectRed.ProjectRed
        "config/ProjectRed.cfg";
      rio-rio-cfg =
        mkCfgCheck
        "rio-rio-cfg"
        moduleEval.config.programs.gtnh.mods.RIO.RIO
        "config/RIO.cfg";
      rtg-rtg-cfg =
        mkCfgCheck
        "rtg-rtg-cfg"
        moduleEval.config.programs.gtnh.mods.RTG.rtg
        "config/RTG/rtg.cfg";
      rwg-rwg-cfg =
        mkCfgCheck
        "rwg-rwg-cfg"
        moduleEval.config.programs.gtnh.mods.RWG.RWG
        "config/RWG.cfg";
      random-things-random-things-cfg =
        mkCfgCheck
        "random-things-random-things-cfg"
        moduleEval.config.programs.gtnh.mods.RandomThings.RandomThings
        "config/RandomThings.cfg";
      sgcraft-sgcraft-cfg =
        mkCfgCheck
        "sgcraft-sgcraft-cfg"
        moduleEval.config.programs.gtnh.mods.SGCraft.SGCraft
        "config/SGCraft.cfg";
      special-mobs-special-mobs-cfg =
        mkCfgCheck
        "special-mobs-special-mobs-cfg"
        moduleEval.config.programs.gtnh.mods.SpecialMobs.SpecialMobs
        "config/SpecialMobs.cfg";
      spice-of-life-spice-of-life-cfg =
        mkCfgCheck
        "spice-of-life-spice-of-life-cfg"
        moduleEval.config.programs.gtnh.mods.SpiceOfLife.SpiceOfLife
        "config/SpiceOfLife.cfg";
      steves-addons-steves-addons-cfg =
        mkCfgCheck
        "steves-addons-steves-addons-cfg"
        moduleEval.config.programs.gtnh.mods.StevesAddons.StevesAddons
        "config/StevesAddons.cfg";
      steves-carts-steves-carts-cfg =
        mkCfgCheck
        "steves-carts-steves-carts-cfg"
        moduleEval.config.programs.gtnh.mods.StevesCarts.StevesCarts
        "config/StevesCarts.cfg";
      storage-drawers-storage-drawers-cfg =
        mkCfgCheck
        "storage-drawers-storage-drawers-cfg"
        moduleEval.config.programs.gtnh.mods.StorageDrawers.StorageDrawers
        "config/StorageDrawers.cfg";
      super-ti-c-effects-cfg =
        mkCfgCheck
        "super-ti-c-effects-cfg"
        moduleEval.config.programs.gtnh.mods.SuperTiC.effects
        "config/SuperTiC/effects.cfg";
      super-ti-c-main-cfg =
        mkCfgCheck
        "super-ti-c-main-cfg"
        moduleEval.config.programs.gtnh.mods.SuperTiC.main
        "config/SuperTiC/main.cfg";
      tgregworks-tgregworks-cfg =
        mkCfgCheck
        "tgregworks-tgregworks-cfg"
        moduleEval.config.programs.gtnh.mods.TGregworks.TGregworks
        "config/TGregworks.cfg";
      tmechworks-tmechworks-cfg =
        mkCfgCheck
        "tmechworks-tmechworks-cfg"
        moduleEval.config.programs.gtnh.mods.TMechworks.TMechworks
        "config/TMechworks.cfg";
      tainted-magic-tainted-magic-cfg =
        mkCfgCheck
        "tainted-magic-tainted-magic-cfg"
        moduleEval.config.programs.gtnh.mods.TaintedMagic.TaintedMagic
        "config/TaintedMagic.cfg";
      thaumcraft-thaumcraft-cfg =
        mkCfgCheck
        "thaumcraft-thaumcraft-cfg"
        moduleEval.config.programs.gtnh.mods.Thaumcraft.Thaumcraft
        "config/Thaumcraft.cfg";
      thaumic-bases-thaumic-bases-cfg =
        mkCfgCheck
        "thaumic-bases-thaumic-bases-cfg"
        moduleEval.config.programs.gtnh.mods.ThaumicBases."Thaumic Bases"
        "config/Thaumic Bases.cfg";
      thaumic-exploration-thaumic-exploration-cfg =
        mkCfgCheck
        "thaumic-exploration-thaumic-exploration-cfg"
        moduleEval.config.programs.gtnh.mods.ThaumicExploration.ThaumicExploration
        "config/ThaumicExploration.cfg";
      thaumic-horizons-thaumic-horizons-cfg =
        mkCfgCheck
        "thaumic-horizons-thaumic-horizons-cfg"
        moduleEval.config.programs.gtnh.mods.ThaumicHorizons.ThaumicHorizons
        "config/ThaumicHorizons.cfg";
      thaumic-machina-thaumic-machina-cfg =
        mkCfgCheck
        "thaumic-machina-thaumic-machina-cfg"
        moduleEval.config.programs.gtnh.mods.ThaumicMachina.ThaumicMachina
        "config/ThaumicMachina.cfg";
      thaumic-tinkerer-thaumic-tinkerer-cfg =
        mkCfgCheck
        "thaumic-tinkerer-thaumic-tinkerer-cfg"
        moduleEval.config.programs.gtnh.mods.ThaumicTinkerer.ThaumicTinkerer
        "config/ThaumicTinkerer.cfg";
      tinkers-construct-tinkers-construct-cfg =
        mkCfgCheck
        "tinkers-construct-tinkers-construct-cfg"
        moduleEval.config.programs.gtnh.mods.TinkersConstruct.TinkersConstruct
        "config/TinkersConstruct.cfg";
      tinkers-modules-tinkers-modules-cfg =
        mkCfgCheck
        "tinkers-modules-tinkers-modules-cfg"
        moduleEval.config.programs.gtnh.mods.TinkersModules.TinkersModules
        "config/TinkersModules.cfg";
      translocator-translocator-cfg =
        mkCfgCheck
        "translocator-translocator-cfg"
        moduleEval.config.programs.gtnh.mods.Translocator.Translocator
        "config/Translocator.cfg";
      travellers-gear-travellers-gear-cfg =
        mkCfgCheck
        "travellers-gear-travellers-gear-cfg"
        moduleEval.config.programs.gtnh.mods.TravellersGear.TravellersGear
        "config/TravellersGear.cfg";
      travellers-gear_inv-travellers-gear_inv-cfg =
        mkCfgCheck
        "travellers-gear_inv-travellers-gear_inv-cfg"
        moduleEval.config.programs.gtnh.mods.TravellersGear_inv.TravellersGear_inv
        "config/TravellersGear_inv.cfg";
      twilight-forest-twilight-forest-cfg =
        mkCfgCheck
        "twilight-forest-twilight-forest-cfg"
        moduleEval.config.programs.gtnh.mods.TwilightForest.TwilightForest
        "config/TwilightForest.cfg";
      universal-singularities-universal-singularities-cfg =
        mkCfgCheck
        "universal-singularities-universal-singularities-cfg"
        moduleEval.config.programs.gtnh.mods.UniversalSingularities.UniversalSingularities
        "config/UniversalSingularities.cfg";
      waila-waila-cfg =
        mkCfgCheck
        "waila-waila-cfg"
        moduleEval.config.programs.gtnh.mods.Waila.Waila
        "config/Waila.cfg";
      waila-harvestability-waila-harvestability-cfg =
        mkCfgCheck
        "waila-harvestability-waila-harvestability-cfg"
        moduleEval.config.programs.gtnh.mods.WailaHarvestability.WailaHarvestability
        "config/WailaHarvestability.cfg";
      warp-theory-warp-theory-cfg =
        mkCfgCheck
        "warp-theory-warp-theory-cfg"
        moduleEval.config.programs.gtnh.mods.WarpTheory.WarpTheory
        "config/WarpTheory.cfg";
      wireless-crafting-terminal-wireless-crafting-terminal-cfg =
        mkCfgCheck
        "wireless-crafting-terminal-wireless-crafting-terminal-cfg"
        moduleEval.config.programs.gtnh.mods.WirelessCraftingTerminal.WirelessCraftingTerminal
        "config/WirelessCraftingTerminal.cfg";
      wireless-redstone-wireless-redstone-cfg =
        mkCfgCheck
        "wireless-redstone-wireless-redstone-cfg"
        moduleEval.config.programs.gtnh.mods.WirelessRedstone.WirelessRedstone
        "config/WirelessRedstone.cfg";
      witchery-extras-asm-cfg =
        mkCfgCheck
        "witchery-extras-asm-cfg"
        moduleEval.config.programs.gtnh.mods.WitcheryExtras.asm
        "config/WitcheryExtras/asm.cfg";
      witching-gadgets-witching-gadgets-cfg =
        mkCfgCheck
        "witching-gadgets-witching-gadgets-cfg"
        moduleEval.config.programs.gtnh.mods.WitchingGadgets.WitchingGadgets
        "config/WitchingGadgets.cfg";
      ztones-ztones-cfg =
        mkCfgCheck
        "ztones-ztones-cfg"
        moduleEval.config.programs.gtnh.mods.Ztones.Ztones
        "config/Ztones.cfg";
      adventurebackpack-adventurebackpack-cfg =
        mkCfgCheck
        "adventurebackpack-adventurebackpack-cfg"
        moduleEval.config.programs.gtnh.mods.adventurebackpack.adventurebackpack
        "config/adventurebackpack.cfg";
      ae2fc-ae2fc-cfg =
        mkCfgCheck
        "ae2fc-ae2fc-cfg"
        moduleEval.config.programs.gtnh.mods.ae2fc.ae2fc
        "config/ae2fc.cfg";
      angelica-modules-angelica-modules-cfg =
        mkCfgCheck
        "angelica-modules-angelica-modules-cfg"
        moduleEval.config.programs.gtnh.mods.angelica-modules.angelica-modules
        "config/angelica-modules.cfg";
      archaicfix-archaicfix-cfg =
        mkCfgCheck
        "archaicfix-archaicfix-cfg"
        moduleEval.config.programs.gtnh.mods.archaicfix.archaicfix
        "config/archaicfix.cfg";
      backhand-backhand-cfg =
        mkCfgCheck
        "backhand-backhand-cfg"
        moduleEval.config.programs.gtnh.mods.backhand.backhand
        "config/backhand.cfg";
      bartworks-bartworks-cfg =
        mkCfgCheck
        "bartworks-bartworks-cfg"
        moduleEval.config.programs.gtnh.mods.bartworks.bartworks
        "config/bartworks.cfg";
      battlegear2-battlegear2-cfg =
        mkCfgCheck
        "battlegear2-battlegear2-cfg"
        moduleEval.config.programs.gtnh.mods.battlegear2.battlegear2
        "config/battlegear2.cfg";
      beebetteratbees-beebetteratbees-cfg =
        mkCfgCheck
        "beebetteratbees-beebetteratbees-cfg"
        moduleEval.config.programs.gtnh.mods.beebetteratbees.beebetteratbees
        "config/beebetteratbees.cfg";
      berriespp-berriespp-cfg =
        mkCfgCheck
        "berriespp-berriespp-cfg"
        moduleEval.config.programs.gtnh.mods.berriespp.berriespp
        "config/berriespp.cfg";
      betterbuilderswands-betterbuilderswands-cfg =
        mkCfgCheck
        "betterbuilderswands-betterbuilderswands-cfg"
        moduleEval.config.programs.gtnh.mods.betterbuilderswands.betterbuilderswands
        "config/betterbuilderswands.cfg";
      bettercrashes-bettercrashes-cfg =
        mkCfgCheck
        "bettercrashes-bettercrashes-cfg"
        moduleEval.config.programs.gtnh.mods.bettercrashes.bettercrashes
        "config/bettercrashes.cfg";
      betterquesting-questbook-cfg =
        mkCfgCheck
        "betterquesting-questbook-cfg"
        moduleEval.config.programs.gtnh.mods.betterquesting.questbook
        "config/betterquesting/questbook.cfg";
      betterquesting-betterquesting-cfg =
        mkCfgCheck
        "betterquesting-betterquesting-cfg"
        moduleEval.config.programs.gtnh.mods.betterquesting.betterquesting
        "config/betterquesting.cfg";
      biomesoplenty-biomeweights-cfg =
        mkCfgCheck
        "biomesoplenty-biomeweights-cfg"
        moduleEval.config.programs.gtnh.mods.biomesoplenty.biomeweights
        "config/biomesoplenty/biomeweights.cfg";
      biomesoplenty-ids-cfg =
        mkCfgCheck
        "biomesoplenty-ids-cfg"
        moduleEval.config.programs.gtnh.mods.biomesoplenty.ids
        "config/biomesoplenty/ids.cfg";
      biomesoplenty-terraingen-cfg =
        mkCfgCheck
        "biomesoplenty-terraingen-cfg"
        moduleEval.config.programs.gtnh.mods.biomesoplenty.terraingen
        "config/biomesoplenty/terraingen.cfg";
      bogosorter-bogosorter-cfg =
        mkCfgCheck
        "bogosorter-bogosorter-cfg"
        moduleEval.config.programs.gtnh.mods.bogosorter.bogosorter
        "config/bogosorter.cfg";
      bq_rf-bq_rf-cfg =
        mkCfgCheck
        "bq_rf-bq_rf-cfg"
        moduleEval.config.programs.gtnh.mods.bq_rf.bq_rf
        "config/bq_rf.cfg";
      bq_standard-bq_standard-cfg =
        mkCfgCheck
        "bq_standard-bq_standard-cfg"
        moduleEval.config.programs.gtnh.mods.bq_standard.bq_standard
        "config/bq_standard.cfg";
      bq_themed-bq_themed-cfg =
        mkCfgCheck
        "bq_themed-bq_themed-cfg"
        moduleEval.config.programs.gtnh.mods.bq_themed.bq_themed
        "config/bq_themed.cfg";
      bugtorch-base-cfg =
        mkCfgCheck
        "bugtorch-base-cfg"
        moduleEval.config.programs.gtnh.mods.bugtorch.base
        "config/bugtorch/base.cfg";
      bugtorch-mixins-cfg =
        mkCfgCheck
        "bugtorch-mixins-cfg"
        moduleEval.config.programs.gtnh.mods.bugtorch.mixins
        "config/bugtorch/mixins.cfg";
      bugtorch-mixins-mod-support-cfg =
        mkCfgCheck
        "bugtorch-mixins-mod-support-cfg"
        moduleEval.config.programs.gtnh.mods.bugtorch.mixinsModSupport
        "config/bugtorch/mixinsModSupport.cfg";
      bugtorch-mod-support-cfg =
        mkCfgCheck
        "bugtorch-mod-support-cfg"
        moduleEval.config.programs.gtnh.mods.bugtorch.modSupport
        "config/bugtorch/modSupport.cfg";
      buildcraft-main-cfg =
        mkCfgCheck
        "buildcraft-main-cfg"
        moduleEval.config.programs.gtnh.mods.buildcraft.main
        "config/buildcraft/main.cfg";
      catwalks-catwalks-cfg =
        mkCfgCheck
        "catwalks-catwalks-cfg"
        moduleEval.config.programs.gtnh.mods.catwalks.catwalks
        "config/catwalks.cfg";
      chisel-chisel-cfg =
        mkCfgCheck
        "chisel-chisel-cfg"
        moduleEval.config.programs.gtnh.mods.chisel.chisel
        "config/chisel.cfg";
      cofh-core_common-cfg =
        mkCfgCheck
        "cofh-core_common-cfg"
        moduleEval.config.programs.gtnh.mods.cofh.core_common
        "config/cofh/core/common.cfg";
      compactkineticgenerators-compactkineticgenerators-cfg =
        mkCfgCheck
        "compactkineticgenerators-compactkineticgenerators-cfg"
        moduleEval.config.programs.gtnh.mods.compactkineticgenerators.compactkineticgenerators
        "config/compactkineticgenerators.cfg";
      computronics-computronics-cfg =
        mkCfgCheck
        "computronics-computronics-cfg"
        moduleEval.config.programs.gtnh.mods.computronics.computronics
        "config/computronics.cfg";
      coretweaks-coretweaks-cfg =
        mkCfgCheck
        "coretweaks-coretweaks-cfg"
        moduleEval.config.programs.gtnh.mods.coretweaks.coretweaks
        "config/coretweaks.cfg";
      darkerer-darkerer-cfg =
        mkCfgCheck
        "darkerer-darkerer-cfg"
        moduleEval.config.programs.gtnh.mods.darkerer.darkerer
        "config/darkerer.cfg";
      defaultserverlist-defaultserverlist-cfg =
        mkCfgCheck
        "defaultserverlist-defaultserverlist-cfg"
        moduleEval.config.programs.gtnh.mods.defaultserverlist.defaultserverlist
        "config/defaultserverlist.cfg";
      defaultworldgenerator-defaultworldgenerator-cfg =
        mkCfgCheck
        "defaultworldgenerator-defaultworldgenerator-cfg"
        moduleEval.config.programs.gtnh.mods.defaultworldgenerator.defaultworldgenerator
        "config/defaultworldgenerator.cfg";
      duradisplay-duradisplay-cfg =
        mkCfgCheck
        "duradisplay-duradisplay-cfg"
        moduleEval.config.programs.gtnh.mods.duradisplay.duradisplay
        "config/duradisplay.cfg";
      endercore-endercore-cfg =
        mkCfgCheck
        "endercore-endercore-cfg"
        moduleEval.config.programs.gtnh.mods.endercore.endercore
        "config/endercore/endercore.cfg";
      enderio-ender-io-cfg =
        mkCfgCheck
        "enderio-ender-io-cfg"
        moduleEval.config.programs.gtnh.mods.enderio.EnderIO
        "config/enderio/EnderIO.cfg";
      enderzoo-ender-zoo-cfg =
        mkCfgCheck
        "enderzoo-ender-zoo-cfg"
        moduleEval.config.programs.gtnh.mods.enderzoo.EnderZoo
        "config/enderzoo/EnderZoo.cfg";
      eternalsingularity-eternalsingularity-cfg =
        mkCfgCheck
        "eternalsingularity-eternalsingularity-cfg"
        moduleEval.config.programs.gtnh.mods.eternalsingularity.eternalsingularity
        "config/eternalsingularity.cfg";
      etfuturum-blocksitems-cfg =
        mkCfgCheck
        "etfuturum-blocksitems-cfg"
        moduleEval.config.programs.gtnh.mods.etfuturum.blocksitems
        "config/etfuturum/blocksitems.cfg";
      etfuturum-enchantspotions-cfg =
        mkCfgCheck
        "etfuturum-enchantspotions-cfg"
        moduleEval.config.programs.gtnh.mods.etfuturum.enchantspotions
        "config/etfuturum/enchantspotions.cfg";
      etfuturum-entities-cfg =
        mkCfgCheck
        "etfuturum-entities-cfg"
        moduleEval.config.programs.gtnh.mods.etfuturum.entities
        "config/etfuturum/entities.cfg";
      etfuturum-experiments-cfg =
        mkCfgCheck
        "etfuturum-experiments-cfg"
        moduleEval.config.programs.gtnh.mods.etfuturum.experiments
        "config/etfuturum/experiments.cfg";
      etfuturum-functions-cfg =
        mkCfgCheck
        "etfuturum-functions-cfg"
        moduleEval.config.programs.gtnh.mods.etfuturum.functions
        "config/etfuturum/functions.cfg";
      etfuturum-mixins-cfg =
        mkCfgCheck
        "etfuturum-mixins-cfg"
        moduleEval.config.programs.gtnh.mods.etfuturum.mixins
        "config/etfuturum/mixins.cfg";
      etfuturum-modcompat-cfg =
        mkCfgCheck
        "etfuturum-modcompat-cfg"
        moduleEval.config.programs.gtnh.mods.etfuturum.modcompat
        "config/etfuturum/modcompat.cfg";
      etfuturum-sounds-cfg =
        mkCfgCheck
        "etfuturum-sounds-cfg"
        moduleEval.config.programs.gtnh.mods.etfuturum.sounds
        "config/etfuturum/sounds.cfg";
      etfuturum-tweaks-cfg =
        mkCfgCheck
        "etfuturum-tweaks-cfg"
        moduleEval.config.programs.gtnh.mods.etfuturum.tweaks
        "config/etfuturum/tweaks.cfg";
      etfuturum-world-cfg =
        mkCfgCheck
        "etfuturum-world-cfg"
        moduleEval.config.programs.gtnh.mods.etfuturum.world
        "config/etfuturum/world.cfg";
      findit-findit-cfg =
        mkCfgCheck
        "findit-findit-cfg"
        moduleEval.config.programs.gtnh.mods.findit.findit
        "config/findit.cfg";
      forestry-apiculture-cfg =
        mkCfgCheck
        "forestry-apiculture-cfg"
        moduleEval.config.programs.gtnh.mods.forestry.apiculture
        "config/forestry/apiculture.cfg";
      forestry-backpacks-cfg =
        mkCfgCheck
        "forestry-backpacks-cfg"
        moduleEval.config.programs.gtnh.mods.forestry.backpacks
        "config/forestry/backpacks.cfg";
      forestry-common-cfg =
        mkCfgCheck
        "forestry-common-cfg"
        moduleEval.config.programs.gtnh.mods.forestry.common
        "config/forestry/common.cfg";
      forestry-fluids-cfg =
        mkCfgCheck
        "forestry-fluids-cfg"
        moduleEval.config.programs.gtnh.mods.forestry.fluids
        "config/forestry/fluids.cfg";
      forestry-gamemodes_-easy-cfg =
        mkCfgCheck
        "forestry-gamemodes_-easy-cfg"
        moduleEval.config.programs.gtnh.mods.forestry.gamemodes_EASY
        "config/forestry/gamemodes/EASY.cfg";
      forestry-gamemodes_-hard-cfg =
        mkCfgCheck
        "forestry-gamemodes_-hard-cfg"
        moduleEval.config.programs.gtnh.mods.forestry.gamemodes_HARD
        "config/forestry/gamemodes/HARD.cfg";
      forestry-gamemodes_-normal-cfg =
        mkCfgCheck
        "forestry-gamemodes_-normal-cfg"
        moduleEval.config.programs.gtnh.mods.forestry.gamemodes_NORMAL
        "config/forestry/gamemodes/NORMAL.cfg";
      forestry-gamemodes_-op-cfg =
        mkCfgCheck
        "forestry-gamemodes_-op-cfg"
        moduleEval.config.programs.gtnh.mods.forestry.gamemodes_OP
        "config/forestry/gamemodes/OP.cfg";
      forestry-lepidopterology-cfg =
        mkCfgCheck
        "forestry-lepidopterology-cfg"
        moduleEval.config.programs.gtnh.mods.forestry.lepidopterology
        "config/forestry/lepidopterology.cfg";
      forestry-modules-cfg =
        mkCfgCheck
        "forestry-modules-cfg"
        moduleEval.config.programs.gtnh.mods.forestry.modules
        "config/forestry/modules.cfg";
      forge-forge-cfg =
        mkCfgCheck
        "forge-forge-cfg"
        moduleEval.config.programs.gtnh.mods.forge.forge
        "config/forge.cfg";
      forge-chunk-loading-forge-chunk-loading-cfg =
        mkCfgCheck
        "forge-chunk-loading-forge-chunk-loading-cfg"
        moduleEval.config.programs.gtnh.mods.forgeChunkLoading.forgeChunkLoading
        "config/forgeChunkLoading.cfg";
      gadomancy-gadomancy-cfg =
        mkCfgCheck
        "gadomancy-gadomancy-cfg"
        moduleEval.config.programs.gtnh.mods.gadomancy.gadomancy
        "config/gadomancy.cfg";
      # gendustry/bees.cfg and overrides/*.cfg: custom recipe/upgrade formats, not Forge key=value

      ggfab-ggfab-cfg =
        mkCfgCheck
        "ggfab-ggfab-cfg"
        moduleEval.config.programs.gtnh.mods.ggfab.ggfab
        "config/ggfab.cfg";
      gtneioreplugin-gtneioreplugin-cfg =
        mkCfgCheck
        "gtneioreplugin-gtneioreplugin-cfg"
        moduleEval.config.programs.gtnh.mods.gtneioreplugin.gtneioreplugin
        "config/gtneioreplugin.cfg";
      gtnhintergalactic-gtnhintergalactic-cfg =
        mkCfgCheck
        "gtnhintergalactic-gtnhintergalactic-cfg"
        moduleEval.config.programs.gtnh.mods.gtnhintergalactic.gtnhintergalactic
        "config/gtnhintergalactic.cfg";
      harvestcraft-harvestcraft-cfg =
        mkCfgCheck
        "harvestcraft-harvestcraft-cfg"
        moduleEval.config.programs.gtnh.mods.harvestcraft.harvestcraft
        "config/harvestcraft.cfg";
      harvestthenether-harvestthenether-cfg =
        mkCfgCheck
        "harvestthenether-harvestthenether-cfg"
        moduleEval.config.programs.gtnh.mods.harvestthenether.harvestthenether
        "config/harvestthenether.cfg";
      hodgepodge-hodgepodge-cfg =
        mkCfgCheck
        "hodgepodge-hodgepodge-cfg"
        moduleEval.config.programs.gtnh.mods.hodgepodge.hodgepodge
        "config/hodgepodge.cfg";
      holoinventory-holoinventory-cfg =
        mkCfgCheck
        "holoinventory-holoinventory-cfg"
        moduleEval.config.programs.gtnh.mods.holoinventory.holoinventory
        "config/holoinventory.cfg";
      hydroenergy-hydroenergy-cfg =
        mkCfgCheck
        "hydroenergy-hydroenergy-cfg"
        moduleEval.config.programs.gtnh.mods.hydroenergy.hydroenergy
        "config/hydroenergy.cfg";
      ifu-ifu-cfg =
        mkCfgCheck
        "ifu-ifu-cfg"
        moduleEval.config.programs.gtnh.mods.ifu.ifu
        "config/ifu.cfg";
      ironchestminecarts-ironchestminecarts-cfg =
        mkCfgCheck
        "ironchestminecarts-ironchestminecarts-cfg"
        moduleEval.config.programs.gtnh.mods.ironchestminecarts.ironchestminecarts
        "config/ironchestminecarts.cfg";
      kubatech-kubatech-cfg =
        mkCfgCheck
        "kubatech-kubatech-cfg"
        moduleEval.config.programs.gtnh.mods.kubatech.kubatech
        "config/kubatech/kubatech.cfg";
      lootgames-rewards-cfg =
        mkCfgCheck
        "lootgames-rewards-cfg"
        moduleEval.config.programs.gtnh.mods.lootgames.rewards
        "config/lootgames/rewards.cfg";
      lwjgl3ify-lwjgl3ify-cfg =
        mkCfgCheck
        "lwjgl3ify-lwjgl3ify-cfg"
        moduleEval.config.programs.gtnh.mods.lwjgl3ify.lwjgl3ify
        "config/lwjgl3ify.cfg";
      malisisdoors-malisisdoors-cfg =
        mkCfgCheck
        "malisisdoors-malisisdoors-cfg"
        moduleEval.config.programs.gtnh.mods.malisisdoors.malisisdoors
        "config/malisisdoors.cfg";
      mcpatcherforge-mcpatcherforge-cfg =
        mkCfgCheck
        "mcpatcherforge-mcpatcherforge-cfg"
        moduleEval.config.programs.gtnh.mods.mcpatcherforge.mcpatcherforge
        "config/mcpatcherforge.cfg";
      # microblocks-microblocks-cfg: block ID list format, not Forge key=value

      mobsinfo-mobsinfo-cfg =
        mkCfgCheck
        "mobsinfo-mobsinfo-cfg"
        moduleEval.config.programs.gtnh.mods.mobsinfo.mobsinfo
        "config/mobsinfo/mobsinfo.cfg";
      multipart-multipart-cfg =
        mkCfgCheck
        "multipart-multipart-cfg"
        moduleEval.config.programs.gtnh.mods.multipart.multipart
        "config/multipart.cfg";
      neiintegration-neiintegration-cfg =
        mkCfgCheck
        "neiintegration-neiintegration-cfg"
        moduleEval.config.programs.gtnh.mods.neiintegration.neiintegration
        "config/neiintegration.cfg";
      openglasses-openglasses-cfg =
        mkCfgCheck
        "openglasses-openglasses-cfg"
        moduleEval.config.programs.gtnh.mods.openglasses.openglasses
        "config/openglasses.cfg";
      openmodularturrets-openmodularturrets-cfg =
        mkCfgCheck
        "openmodularturrets-openmodularturrets-cfg"
        moduleEval.config.programs.gtnh.mods.openmodularturrets.openmodularturrets
        "config/openmodularturrets.cfg";
      openprinter-openprinter-cfg =
        mkCfgCheck
        "openprinter-openprinter-cfg"
        moduleEval.config.programs.gtnh.mods.openprinter.openprinter
        "config/openprinter.cfg";
      railcraft-blocks-cfg =
        mkCfgCheck
        "railcraft-blocks-cfg"
        moduleEval.config.programs.gtnh.mods.railcraft.blocks
        "config/railcraft/blocks.cfg";
      railcraft-items-cfg =
        mkCfgCheck
        "railcraft-items-cfg"
        moduleEval.config.programs.gtnh.mods.railcraft.items
        "config/railcraft/items.cfg";
      railcraft-modules-cfg =
        mkCfgCheck
        "railcraft-modules-cfg"
        moduleEval.config.programs.gtnh.mods.railcraft.modules
        "config/railcraft/modules.cfg";
      railcraft-railcraft-cfg =
        mkCfgCheck
        "railcraft-railcraft-cfg"
        moduleEval.config.programs.gtnh.mods.railcraft.railcraft
        "config/railcraft/railcraft.cfg";
      roguelike_dungeons-roguelike-cfg =
        mkCfgCheck
        "roguelike_dungeons-roguelike-cfg"
        moduleEval.config.programs.gtnh.mods.roguelike_dungeons.roguelike
        "config/roguelike_dungeons/roguelike.cfg";
      salisarcana-bugfixes-cfg =
        mkCfgCheck
        "salisarcana-bugfixes-cfg"
        moduleEval.config.programs.gtnh.mods.salisarcana.bugfixes
        "config/salisarcana/bugfixes.cfg";
      salisarcana-commands-cfg =
        mkCfgCheck
        "salisarcana-commands-cfg"
        moduleEval.config.programs.gtnh.mods.salisarcana.commands
        "config/salisarcana/commands.cfg";
      salisarcana-enhancements-cfg =
        mkCfgCheck
        "salisarcana-enhancements-cfg"
        moduleEval.config.programs.gtnh.mods.salisarcana.enhancements
        "config/salisarcana/enhancements.cfg";
      salisarcana-mod_integrations-cfg =
        mkCfgCheck
        "salisarcana-mod_integrations-cfg"
        moduleEval.config.programs.gtnh.mods.salisarcana.mod_integrations
        "config/salisarcana/mod_integrations.cfg";
      salisarcana-salisarcana-cfg =
        mkCfgCheck
        "salisarcana-salisarcana-cfg"
        moduleEval.config.programs.gtnh.mods.salisarcana.salisarcana
        "config/salisarcana.cfg";
      supersolarpanel-supersolarpanel-cfg =
        mkCfgCheck
        "supersolarpanel-supersolarpanel-cfg"
        moduleEval.config.programs.gtnh.mods.supersolarpanel.supersolarpanel
        "config/supersolarpanel.cfg";
      tcneiadditions-tcneiadditions-cfg =
        mkCfgCheck
        "tcneiadditions-tcneiadditions-cfg"
        moduleEval.config.programs.gtnh.mods.tcneiadditions.tcneiadditions
        "config/tcneiadditions.cfg";
      tectech-tectech-cfg =
        mkCfgCheck
        "tectech-tectech-cfg"
        moduleEval.config.programs.gtnh.mods.tectech.tectech
        "config/tectech.cfg";
      thaumcraftneiplugin-thaumcraftneiplugin-cfg =
        mkCfgCheck
        "thaumcraftneiplugin-thaumcraftneiplugin-cfg"
        moduleEval.config.programs.gtnh.mods.thaumcraftneiplugin.thaumcraftneiplugin
        "config/thaumcraftneiplugin.cfg";
      thaumicenergistics-thaumicenergistics-cfg =
        mkCfgCheck
        "thaumicenergistics-thaumicenergistics-cfg"
        moduleEval.config.programs.gtnh.mods.thaumicenergistics.thaumicenergistics
        "config/thaumicenergistics.cfg";
      tinkersdefense-tinkersdefense-cfg =
        mkCfgCheck
        "tinkersdefense-tinkersdefense-cfg"
        moduleEval.config.programs.gtnh.mods.tinkersdefense.tinkersdefense
        "config/tinkersdefense.cfg";
      witchery-witchery-cfg =
        mkCfgCheck
        "witchery-witchery-cfg"
        moduleEval.config.programs.gtnh.mods.witchery.witchery
        "config/witchery.cfg";
      # witchery_debug-witchery_debug-cfg: empty file, check removed
    };
  };
}
