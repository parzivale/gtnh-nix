{lib, ...}: {
  TGregworks = lib.mkOption {
    description = "TGregworks configuration (./config/TGregworks.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/TGregworks.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        enable = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Adamantium = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              AdamantiumAlloy = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              AdemicSteel = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Alduorite = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Aluminium = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Alumite = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Amber = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Amethyst = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Angmallen = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Ardite = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Artherium-Sn = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              AstralSilver = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Atlarus = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              AtomicSeparationCatalyst = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              BArTiMaEuSNeK = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Basalt = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Beryllium = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Bismuth = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              BismuthBronze = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Bismutite = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              BlackBronze = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              BlackDwarfMatter = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              BlackPlutonium = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              BlackSteel = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Blaze = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              BloodInfusedIron = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              BlueSteel = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              BlueTopaz = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Brass = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Bronze = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Californium = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              CallistoIce = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Carbon = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Carmot = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Celenegil = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              CertusQuartz = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Ceruclase = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Chrome = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Chromo-Alumino-Povondraite = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Chrysotile = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Cobalt = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              CobaltBrass = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              ConductiveIron = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              ConstructionFoam = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              CosmicNeutronium = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Creon = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              CrudeSteel = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              CrystallineAlloy = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              CrystallinePinkSlime = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              CubicZirconia = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Cupronickel = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Dalisenite = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              DamascusSteel = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              DarkIron = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              DarkSteel = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              DeepIron = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Desh = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Diamond = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Draconium = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              DraconiumAwakened = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Dreamwood = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Duralumin = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Duranium = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              ElectricalSteel = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Electrum = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              ElectrumFlux = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              ElvenElementium = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Emerald = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EndSteel = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Enderium = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EnderiumBase = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EnergeticAlloy = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EnergeticSilver = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EnhancedGalgadorian = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              EnrichedNaquadahAlloy = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Epoxid = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              EpoxidFiberReinforced = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Eternity = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Eximite = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              ExtremelyUnstableNaquadah = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Fayalite = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              FierySteel = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Firestone = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Flerovium_GT5U = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Flint = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Fluor-Buergerite = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Fluorspar = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Force = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Forsterite = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              GaiaSpirit = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Galgadorian = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              GarnetRed = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              GarnetYellow = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Gold = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              GraniteBlack = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              GraniteRed = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Graphene = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Graphite = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              GreenSapphire = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              HSLA = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              HSSE = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              HSSG = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              HSSS = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Haderoth = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Hedenbergite = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              HeeEndium = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Hepatizon = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              HighDurabilityCompoundSteel = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Hikarium = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Ichorium = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Incoloy-903 = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Infinity = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              InfinityCatalyst = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Infuscolium = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              InfusedAir = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              InfusedEarth = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              InfusedEntropy = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              InfusedFire = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              InfusedGold = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              InfusedOrder = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              InfusedWater = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Inolashite = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Invar = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Iridium = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Iron = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              IronMagnetic = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              IronWood = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Jade = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Jasper = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Kanthal = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Knightmetal = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              LanthanumHexaboride = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Lead = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Ledox = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              LithiumChloride = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Livingrock = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Livingwood = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Lumiium = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              MAR-Ce-M200Steel = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              MAR-M200Steel = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Magmatter = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Magnalium = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              MagnetoResonatic = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              MagnetohydrodynamicallyConstrainedStarMatter = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Manasteel = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Manganese = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Manyullyn = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Marble = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Mellion = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              MelodicAlloy = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              MetastableOganesson = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              MeteoricIron = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              MeteoricSteel = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Midasium = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Mithril = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Molybdenum = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Mu-metal = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              MysteriousCrystal = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Mytryl = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Naquadah = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              NaquadahAlloy = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              NaquadahEnriched = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Naquadria = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Neodymium = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              NeodymiumMagnetic = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              NetherQuartz = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              NetherStar = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Neutronium = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Nichrome = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Nickel = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              NickelZincFerrite = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Olenite = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Olivine = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Opal = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Orichalcum = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Oriharukon = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Orundum = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Osmiridium = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Osmium = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Oureclase = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Palladium = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Permalloy = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              PigIron = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Plastic = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Platinum = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Plutonium = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Plutonium241 = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Polybenzimidazole = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Polycaprolactam = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              PolyphenyleneSulfide = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Polystyrene = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Polytetrafluoroethylene = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              PolyvinylChloride = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Prasiolite = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              PreciousMetalsAlloy = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Prometheum = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              PulsatingIron = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Quantium = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Realgar = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              RedSteel = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              RedZircon = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              RedstoneAlloy = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Reinforced = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Rhodium = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Rhodium-PlatedPalladium = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              RoseGold = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Rubber = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Rubracium = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Ruby = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Ruridit = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Ruthenium = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              SamariumMagnetic = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Sapphire = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Shadow = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              ShadowIron = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              ShadowSteel = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Shirabon = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Signalium = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Silicone = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Silver = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              SixPhasedCopper = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Soularium = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              SpaceTime = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              StainlessSteel = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Steel = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              SteelMagnetic = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Steeleaf = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              StellarAlloy = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              SterlingSilver = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Stone = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              StyreneButadieneRubber = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Sunnarium = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              TPVAlloy = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Tairitsu = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              TanmolyiumBeta-C = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              TantalumHafniumCarbide = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Tanzanite = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              TengamAttuned = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              TengamPurified = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Terrasteel = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Thaumium = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Thorium = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Thorium232 = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Tiberium = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              TinAlloy = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Titanium = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Topaz = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              TranscendentMetal = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Trinium = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Tritanium = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Tungsten = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              TungstenCarbide = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              TungstenSteel = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Ultimet = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Universium = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Uranium = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Uranium235 = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Vanadio-Oxy-Dravite = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              VanadiumSteel = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              VibrantAlloy = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Vinteum = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              VividAlloy = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Void = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Voidmetal = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Vulcanite = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Vyroxeres = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              WhiteDwarfMatter = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Wood = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              WoodSealed = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              WroughtIron = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              Zircaloy-2 = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Zircaloy-4 = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              Zn-ThAlloy = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              exohalkonite = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              hotexohalkonite = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              hotprotohalkonite = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              protohalkonite = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              recipe = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    addIngotRepair = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Allow repairing TGregworks tools with ingots [default: false]";
                    };
                    addShardRepair = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Allow repairing TGregworks tools with shards [default: true]";
                    };
                    extruderRecipes = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    gemToolPartRecipes = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Enable recipes for tool parts made of gems [default: true]";
                    };
                    gregtechcastrecipe = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Enable the GregTech style Shard Cast recipe [default: true]";
                    };
                    ingotToShardRecipe = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    reverseSmelting = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    shardToIngotSmelting = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    shardToToolPartRecipe = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    solidifierRecipes = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    tinkersconstructcastrecipe = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "Enable the Shard Cast recipe using Tinkers' Construct shards [default: true]";
                    };
                    useNonGTFluidsForBolts = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    useNonGTToolRodsForBolts = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                    };
                    alloysmelter = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          reverseSmelting = lib.mkOption {
                            type = lib.types.bool;
                            default = true;
                            description = "Enable smelting tool parts in an alloy smelter to get shards back [default: true]";
                          };
                          shardToIngotSmelting = lib.mkOption {
                            type = lib.types.bool;
                            default = true;
                            description = "Enable smelting two shards into one ingot in an alloy smelter [default: true]";
                          };
                        };
                      };
                    };
                    extruder = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          castExtruderRecipes = lib.mkOption {
                            type = lib.types.bool;
                            default = false;
                            description = "Enable creating tool part casts in the extruder [default: false]";
                          };
                          extruderRecipes = lib.mkOption {
                            type = lib.types.bool;
                            default = true;
                            description = "Enable tool part recipes in the extruder [default: true]";
                          };
                          ingotToShardRecipe = lib.mkOption {
                            type = lib.types.bool;
                            default = true;
                            description = "Enable creating shards from ingots in the extruder [default: true]";
                          };
                          shardToToolPartRecipe = lib.mkOption {
                            type = lib.types.bool;
                            default = true;
                            description = "Enable creating tool parts from shards in the extruder (if 'extruderRecipes' is enabled) [default: true]";
                          };
                        };
                      };
                    };
                    fluidsolidifier = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          castSolidifierRecipes = lib.mkOption {
                            type = lib.types.bool;
                            default = false;
                            description = "Enable creating tool part casts in the fluid solidifier [default: false]";
                          };
                          moltenToShardRecipe = lib.mkOption {
                            type = lib.types.bool;
                            default = false;
                            description = "Enable creating shards from molten material in the fluid solidifier [default: false]";
                          };
                          solidifierRecipes = lib.mkOption {
                            type = lib.types.bool;
                            default = false;
                            description = "Enable tool part recipes in the fluid solidifier [default: false]";
                          };
                          useNonGTFluidsForBolts = lib.mkOption {
                            type = lib.types.bool;
                            default = true;
                            description = "Register Fluid Solidifier recipes for bolts with non-GT fluids. [default: true]";
                          };
                          useNonGTToolRodsForBolts = lib.mkOption {
                            type = lib.types.bool;
                            default = true;
                            description = "Register Fluid Solidifier recipes for bolts with tool rods from non-GT materials. [default: true]";
                          };
                        };
                      };
                    };
                    fluidextractor = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          fluidExtractorRecipes = lib.mkOption {
                            type = lib.types.bool;
                            default = false;
                            description = "Enable extracting the molten material out of tool parts in the fluid extractor [default: false]";
                          };
                          shardExtractorRecipes = lib.mkOption {
                            type = lib.types.bool;
                            default = false;
                            description = "Enable extracting the molten material out of shards in the fluid extractor [default: false]";
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
        general = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              addMaterialsAnyway = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Register Materials even if a material with the same name already exists. May override any material with the same name added by other mods. [default: false]";
              };
              energyUsageMultiplier = lib.mkOption {
                type = lib.types.str;
                default = "1.0";
                description = "Energy usage multiplier for the extruder and solidifier. Base EU/t is either 30 or 120 [range: 0.0 ~ 4500.0, default: 1.0]";
              };
              materialIDRangeStart = lib.mkOption {
                type = lib.types.int;
                default = 1500;
                description = "The lowest ID for TGregworks materials. Only material IDs higher than this will be used, and only if the ID has not been registered before. Other mods might not check if the material ID is already in use and thus crash, if the crash occurs with a TGregworks material, changing this number may fix it. [range: 300 ~ 15000, default: 1500]";
              };
            };
          };
        };
        global = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              arrowfragility = lib.mkOption {
                type = lib.types.float;
                default = 0.9;
              };
              arrowmass = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
              attack = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
              bowdrawspeed = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
              bowflightspeed = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
              durability = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
              handlemodifier = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
              miningspeed = lib.mkOption {
                type = lib.types.float;
                default = 1.0;
              };
            };
          };
        };
        materials = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              durability = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    Adamantium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.5;
                    };
                    AdamantiumAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    AdemicSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Alduorite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Aluminium = lib.mkOption {
                      type = lib.types.float;
                      default = 2.0;
                    };
                    Alumite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Amber = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Amethyst = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Angmallen = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Ardite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Artherium-Sn = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    AstralSilver = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Atlarus = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    AtomicSeparationCatalyst = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    BArTiMaEuSNeK = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Basalt = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Beryllium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Bismuth = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    BismuthBronze = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Bismutite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    BlackBronze = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    BlackDwarfMatter = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    BlackPlutonium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    BlackSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Blaze = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    BlueSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    BlueTopaz = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Brass = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Bronze = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Californium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    CallistoIce = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Carbon = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Carmot = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Celenegil = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    CertusQuartz = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Ceruclase = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Chrome = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Chromo-Alumino-Povondraite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Chrysotile = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Cobalt = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    CobaltBrass = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    ConductiveIron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    ConstructionFoam = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    CosmicNeutronium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    CrudeSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    CrystallineAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    CrystallinePinkSlime = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    CubicZirconia = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Cupronickel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Dalisenite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    DamascusSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.5625;
                    };
                    DarkIron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    DarkSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 4.065;
                    };
                    DeepIron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Desh = lib.mkOption {
                      type = lib.types.float;
                      default = 1.4;
                    };
                    Diamond = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Draconium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    DraconiumAwakened = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Dreamwood = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Duralumin = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Duranium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    ElectricalSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Electrum = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    ElectrumFlux = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    ElvenElementium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Emerald = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    EndSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Enderium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    EnderiumBase = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    EnergeticAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 2.35;
                    };
                    EnergeticSilver = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    EnhancedGalgadorian = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    EnrichedNaquadahAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Epoxid = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    EpoxidFiberReinforced = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Eximite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    ExtremelyUnstableNaquadah = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Fayalite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    FierySteel = lib.mkOption {
                      type = lib.types.float;
                      default = 2.1354;
                    };
                    Firestone = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Flerovium_GT5U = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Flint = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Fluor-Buergerite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Fluorspar = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Force = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Forsterite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    GaiaSpirit = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Galgadorian = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    GarnetRed = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    GarnetYellow = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Gold = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    GraniteBlack = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    GraniteRed = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Graphene = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Graphite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    GreenSapphire = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    HSLA = lib.mkOption {
                      type = lib.types.float;
                      default = 2.066;
                    };
                    HSSE = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    HSSG = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    HSSS = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Haderoth = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Hedenbergite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    HeeEndium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Hepatizon = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    HighDurabilityCompoundSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Hikarium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Ichorium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Incoloy-903 = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Infinity = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    InfinityCatalyst = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Infuscolium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    InfusedAir = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    InfusedEarth = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    InfusedEntropy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    InfusedFire = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    InfusedGold = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    InfusedOrder = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    InfusedWater = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Inolashite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Invar = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Iridium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Iron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    IronMagnetic = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    IronWood = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Jade = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Jasper = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Kanthal = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Knightmetal = lib.mkOption {
                      type = lib.types.float;
                      default = 1.33;
                    };
                    LanthanumHexaboride = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Lead = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Ledox = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    LithiumChloride = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Livingrock = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Livingwood = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Lumiium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    MAR-Ce-M200Steel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    MAR-M200Steel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Magnalium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    MagnetoResonatic = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    MagnetohydrodynamicallyConstrainedStarMatter = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Manasteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Manganese = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Manyullyn = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Marble = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    MelodicAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    MetastableOganesson = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    MeteoricIron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    MeteoricSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 2.5695;
                    };
                    Midasium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Mithril = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Molybdenum = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Mu-metal = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    MysteriousCrystal = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Mytryl = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Naquadah = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    NaquadahAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    NaquadahEnriched = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Naquadria = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Neodymium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    NeodymiumMagnetic = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    NetherQuartz = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    NetherStar = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Neutronium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Nichrome = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Nickel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    NickelZincFerrite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Olenite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Olivine = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Opal = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Orichalcum = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Oriharukon = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Orundum = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Osmiridium = lib.mkOption {
                      type = lib.types.float;
                      default = 2.0;
                    };
                    Osmium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Oureclase = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Palladium = lib.mkOption {
                      type = lib.types.float;
                      default = 5.73;
                    };
                    Permalloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    PigIron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Plastic = lib.mkOption {
                      type = lib.types.float;
                      default = 2.0;
                    };
                    Platinum = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Plutonium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Plutonium241 = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Polybenzimidazole = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Polycaprolactam = lib.mkOption {
                      type = lib.types.float;
                      default = 2.0;
                    };
                    PolyphenyleneSulfide = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Polystyrene = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Polytetrafluoroethylene = lib.mkOption {
                      type = lib.types.float;
                      default = 2.0;
                    };
                    PolyvinylChloride = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Prasiolite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    PreciousMetalsAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Prometheum = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    PulsatingIron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Quantium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Realgar = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    RedSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    RedZircon = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    RedstoneAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Reinforced = lib.mkOption {
                      type = lib.types.float;
                      default = 1.25;
                    };
                    Rhodium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Rhodium-PlatedPalladium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    RoseGold = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Rubber = lib.mkOption {
                      type = lib.types.float;
                      default = 1.5;
                    };
                    Rubracium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Ruby = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Ruridit = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Ruthenium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    SamariumMagnetic = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Sapphire = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Shadow = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    ShadowIron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    ShadowSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Shirabon = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Signalium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Silicone = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Silver = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Soularium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    SpaceTime = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    StainlessSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 2.742;
                    };
                    Steel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    SteelMagnetic = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Steeleaf = lib.mkOption {
                      type = lib.types.float;
                      default = 1.4;
                    };
                    StellarAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    SterlingSilver = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Stone = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    StyreneButadieneRubber = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Sunnarium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    TPVAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Tairitsu = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    TanmolyiumBeta-C = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    TantalumHafniumCarbide = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Tanzanite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Terrasteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Thaumium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Thorium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Thorium232 = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Tiberium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    TinAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Titanium = lib.mkOption {
                      type = lib.types.float;
                      default = 2.0;
                    };
                    Topaz = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    TranscendentMetal = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Trinium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Tritanium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Tungsten = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    TungstenCarbide = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    TungstenSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Ultimet = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Universium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Uranium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Uranium235 = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Vanadio-Oxy-Dravite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    VanadiumSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    VibrantAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Vinteum = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    VividAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Void = lib.mkOption {
                      type = lib.types.float;
                      default = 5.3385;
                    };
                    Voidmetal = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Vulcanite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Vyroxeres = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    WhiteDwarfMatter = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Wood = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    WoodSealed = lib.mkOption {
                      type = lib.types.float;
                      default = 1.5;
                    };
                    WroughtIron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Zircaloy-2 = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Zircaloy-4 = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Zn-ThAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                  };
                };
              };
              miningspeed = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    Adamantium = lib.mkOption {
                      type = lib.types.float;
                      default = 2.3;
                    };
                    AdamantiumAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    AdemicSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Alduorite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Aluminium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Alumite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Amber = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Amethyst = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Angmallen = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Ardite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Artherium-Sn = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    AstralSilver = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Atlarus = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    AtomicSeparationCatalyst = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    BArTiMaEuSNeK = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Basalt = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Beryllium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Bismuth = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    BismuthBronze = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Bismutite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    BlackBronze = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    BlackDwarfMatter = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    BlackPlutonium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    BlackSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 2.154;
                    };
                    Blaze = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    BlueSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    BlueTopaz = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Brass = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Bronze = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Californium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    CallistoIce = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Carbon = lib.mkOption {
                      type = lib.types.float;
                      default = 1.5;
                    };
                    Carmot = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Celenegil = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    CertusQuartz = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Ceruclase = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Chrome = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Chromo-Alumino-Povondraite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Chrysotile = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Cobalt = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    CobaltBrass = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    ConductiveIron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    ConstructionFoam = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    CosmicNeutronium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    CrudeSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    CrystallineAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    CrystallinePinkSlime = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    CubicZirconia = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Cupronickel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Dalisenite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    DamascusSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    DarkIron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    DarkSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    DeepIron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Desh = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Diamond = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Draconium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    DraconiumAwakened = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Dreamwood = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Duralumin = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Duranium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    ElectricalSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Electrum = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    ElectrumFlux = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    ElvenElementium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Emerald = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    EndSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Enderium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    EnderiumBase = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    EnergeticAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    EnergeticSilver = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    EnhancedGalgadorian = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    EnrichedNaquadahAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Epoxid = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    EpoxidFiberReinforced = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Eximite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    ExtremelyUnstableNaquadah = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Fayalite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    FierySteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Firestone = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Flerovium_GT5U = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Flint = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Fluor-Buergerite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Fluorspar = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Force = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Forsterite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    GaiaSpirit = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Galgadorian = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    GarnetRed = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    GarnetYellow = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Gold = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    GraniteBlack = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    GraniteRed = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Graphene = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Graphite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    GreenSapphire = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    HSLA = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    HSSE = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    HSSG = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    HSSS = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Haderoth = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Hedenbergite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    HeeEndium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Hepatizon = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    HighDurabilityCompoundSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Hikarium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Ichorium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Incoloy-903 = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Infinity = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    InfinityCatalyst = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Infuscolium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    InfusedAir = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    InfusedEarth = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    InfusedEntropy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    InfusedFire = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    InfusedGold = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    InfusedOrder = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    InfusedWater = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Inolashite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Invar = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Iridium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Iron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    IronMagnetic = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    IronWood = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Jade = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Jasper = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Kanthal = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Knightmetal = lib.mkOption {
                      type = lib.types.float;
                      default = 1.625;
                    };
                    LanthanumHexaboride = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Lead = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Ledox = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    LithiumChloride = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Livingrock = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Livingwood = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Lumiium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    MAR-Ce-M200Steel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    MAR-M200Steel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Magnalium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    MagnetoResonatic = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    MagnetohydrodynamicallyConstrainedStarMatter = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Manasteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Manganese = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Manyullyn = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Marble = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    MelodicAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    MetastableOganesson = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    MeteoricIron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    MeteoricSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 2.7;
                    };
                    Midasium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Mithril = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Molybdenum = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Mu-metal = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    MysteriousCrystal = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Mytryl = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Naquadah = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    NaquadahAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    NaquadahEnriched = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Naquadria = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Neodymium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    NeodymiumMagnetic = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    NetherQuartz = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    NetherStar = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Neutronium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Nichrome = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Nickel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    NickelZincFerrite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Olenite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Olivine = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Opal = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Orichalcum = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Oriharukon = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Orundum = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Osmiridium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Osmium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Oureclase = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Palladium = lib.mkOption {
                      type = lib.types.float;
                      default = 2.25;
                    };
                    Permalloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    PigIron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Plastic = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Platinum = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Plutonium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Plutonium241 = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Polybenzimidazole = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Polycaprolactam = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    PolyphenyleneSulfide = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Polystyrene = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Polytetrafluoroethylene = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    PolyvinylChloride = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Prasiolite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    PreciousMetalsAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Prometheum = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    PulsatingIron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Quantium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Realgar = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    RedSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    RedZircon = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    RedstoneAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Reinforced = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Rhodium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Rhodium-PlatedPalladium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    RoseGold = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Rubber = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Rubracium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Ruby = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Ruridit = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Ruthenium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    SamariumMagnetic = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Sapphire = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Shadow = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    ShadowIron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    ShadowSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Shirabon = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Signalium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Silicone = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Silver = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Soularium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    SpaceTime = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    StainlessSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.715;
                    };
                    Steel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    SteelMagnetic = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Steeleaf = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    StellarAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    SterlingSilver = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Stone = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    StyreneButadieneRubber = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Sunnarium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    TPVAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Tairitsu = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    TanmolyiumBeta-C = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    TantalumHafniumCarbide = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Tanzanite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Terrasteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Thaumium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Thorium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Thorium232 = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Tiberium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    TinAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Titanium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Topaz = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    TranscendentMetal = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Trinium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Tritanium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Tungsten = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    TungstenCarbide = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    TungstenSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Ultimet = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Universium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Uranium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Uranium235 = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Vanadio-Oxy-Dravite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    VanadiumSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 6.0;
                    };
                    VibrantAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Vinteum = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    VividAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Void = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Voidmetal = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Vulcanite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Vyroxeres = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    WhiteDwarfMatter = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Wood = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    WoodSealed = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    WroughtIron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Zircaloy-2 = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Zircaloy-4 = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Zn-ThAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                  };
                };
              };
              attack = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    Adamantium = lib.mkOption {
                      type = lib.types.float;
                      default = 4.8;
                    };
                    AdamantiumAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    AdemicSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Alduorite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Aluminium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Alumite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Amber = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Amethyst = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Angmallen = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Ardite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Artherium-Sn = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    AstralSilver = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Atlarus = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    AtomicSeparationCatalyst = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    BArTiMaEuSNeK = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Basalt = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Beryllium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Bismuth = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    BismuthBronze = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Bismutite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    BlackBronze = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    BlackDwarfMatter = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    BlackPlutonium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    BlackSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.8;
                    };
                    Blaze = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    BlueSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 2.0;
                    };
                    BlueTopaz = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Brass = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Bronze = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Californium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    CallistoIce = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Carbon = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Carmot = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Celenegil = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    CertusQuartz = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Ceruclase = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Chrome = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Chromo-Alumino-Povondraite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Chrysotile = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Cobalt = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    CobaltBrass = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    ConductiveIron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    ConstructionFoam = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    CosmicNeutronium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    CrudeSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    CrystallineAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    CrystallinePinkSlime = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    CubicZirconia = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Cupronickel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Dalisenite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    DamascusSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.786;
                    };
                    DarkIron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    DarkSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 3.666;
                    };
                    DeepIron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Desh = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Diamond = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Draconium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    DraconiumAwakened = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Dreamwood = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Duralumin = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Duranium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    ElectricalSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Electrum = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    ElectrumFlux = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    ElvenElementium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Emerald = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    EndSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Enderium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    EnderiumBase = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    EnergeticAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    EnergeticSilver = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    EnhancedGalgadorian = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    EnrichedNaquadahAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Epoxid = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    EpoxidFiberReinforced = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Eximite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    ExtremelyUnstableNaquadah = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Fayalite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    FierySteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.5;
                    };
                    Firestone = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Flerovium_GT5U = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Flint = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Fluor-Buergerite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Fluorspar = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Force = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Forsterite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    GaiaSpirit = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Galgadorian = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    GarnetRed = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    GarnetYellow = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Gold = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    GraniteBlack = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    GraniteRed = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Graphene = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Graphite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    GreenSapphire = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    HSLA = lib.mkOption {
                      type = lib.types.float;
                      default = 2.0;
                    };
                    HSSE = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    HSSG = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    HSSS = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Haderoth = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Hedenbergite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    HeeEndium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Hepatizon = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    HighDurabilityCompoundSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Hikarium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Ichorium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Incoloy-903 = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Infinity = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    InfinityCatalyst = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Infuscolium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    InfusedAir = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    InfusedEarth = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    InfusedEntropy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    InfusedFire = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    InfusedGold = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    InfusedOrder = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    InfusedWater = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Inolashite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Invar = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Iridium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Iron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    IronMagnetic = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    IronWood = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Jade = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Jasper = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Kanthal = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Knightmetal = lib.mkOption {
                      type = lib.types.float;
                      default = 2.333;
                    };
                    LanthanumHexaboride = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Lead = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Ledox = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    LithiumChloride = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Livingrock = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Livingwood = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Lumiium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    MAR-Ce-M200Steel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    MAR-M200Steel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Magnalium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    MagnetoResonatic = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    MagnetohydrodynamicallyConstrainedStarMatter = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Manasteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Manganese = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Manyullyn = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Marble = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    MelodicAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    MetastableOganesson = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    MeteoricIron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    MeteoricSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 6.0;
                    };
                    Midasium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Mithril = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Molybdenum = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Mu-metal = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    MysteriousCrystal = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Mytryl = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Naquadah = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    NaquadahAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    NaquadahEnriched = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Naquadria = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Neodymium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    NeodymiumMagnetic = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    NetherQuartz = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    NetherStar = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Neutronium = lib.mkOption {
                      type = lib.types.float;
                      default = 6.667;
                    };
                    Nichrome = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Nickel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    NickelZincFerrite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Olenite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Olivine = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Opal = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Orichalcum = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Oriharukon = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Orundum = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Osmiridium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Osmium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Oureclase = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Palladium = lib.mkOption {
                      type = lib.types.float;
                      default = 8.0;
                    };
                    Permalloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    PigIron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Plastic = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Platinum = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Plutonium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Plutonium241 = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Polybenzimidazole = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Polycaprolactam = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    PolyphenyleneSulfide = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Polystyrene = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Polytetrafluoroethylene = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    PolyvinylChloride = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Prasiolite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    PreciousMetalsAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Prometheum = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    PulsatingIron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Quantium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Realgar = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    RedSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 2.5;
                    };
                    RedZircon = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    RedstoneAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Reinforced = lib.mkOption {
                      type = lib.types.float;
                      default = 1.2;
                    };
                    Rhodium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Rhodium-PlatedPalladium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    RoseGold = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Rubber = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Rubracium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Ruby = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Ruridit = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Ruthenium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    SamariumMagnetic = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Sapphire = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Shadow = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    ShadowIron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    ShadowSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.5;
                    };
                    Shirabon = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Signalium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Silicone = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Silver = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Soularium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    SpaceTime = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    StainlessSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.25;
                    };
                    Steel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    SteelMagnetic = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Steeleaf = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    StellarAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    SterlingSilver = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Stone = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    StyreneButadieneRubber = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Sunnarium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    TPVAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Tairitsu = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    TanmolyiumBeta-C = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    TantalumHafniumCarbide = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Tanzanite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Terrasteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Thaumium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Thorium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Thorium232 = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Tiberium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    TinAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Titanium = lib.mkOption {
                      type = lib.types.float;
                      default = 5.33;
                    };
                    Topaz = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    TranscendentMetal = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Trinium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Tritanium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Tungsten = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    TungstenCarbide = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    TungstenSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 7.0;
                    };
                    Ultimet = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Universium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Uranium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Uranium235 = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Vanadio-Oxy-Dravite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    VanadiumSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 4.8;
                    };
                    VibrantAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Vinteum = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    VividAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Void = lib.mkOption {
                      type = lib.types.float;
                      default = 2.0;
                    };
                    Voidmetal = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Vulcanite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Vyroxeres = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    WhiteDwarfMatter = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Wood = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    WoodSealed = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    WroughtIron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Zircaloy-2 = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Zircaloy-4 = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Zn-ThAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                  };
                };
              };
              handlemodifier = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    Adamantium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    AdamantiumAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    AdemicSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Alduorite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Aluminium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.333;
                    };
                    Alumite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Amber = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Amethyst = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Angmallen = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Ardite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Artherium-Sn = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    AstralSilver = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Atlarus = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    AtomicSeparationCatalyst = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    BArTiMaEuSNeK = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Basalt = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Beryllium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Bismuth = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    BismuthBronze = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Bismutite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    BlackBronze = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    BlackDwarfMatter = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    BlackPlutonium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    BlackSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Blaze = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    BlueSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    BlueTopaz = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Brass = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Bronze = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Californium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    CallistoIce = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Carbon = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Carmot = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Celenegil = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    CertusQuartz = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Ceruclase = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Chrome = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Chromo-Alumino-Povondraite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Chrysotile = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Cobalt = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    CobaltBrass = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    ConductiveIron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    ConstructionFoam = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    CosmicNeutronium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    CrudeSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    CrystallineAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    CrystallinePinkSlime = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    CubicZirconia = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Cupronickel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Dalisenite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    DamascusSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 2.0;
                    };
                    DarkIron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    DarkSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    DeepIron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Desh = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Diamond = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Draconium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    DraconiumAwakened = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Dreamwood = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Duralumin = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Duranium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    ElectricalSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Electrum = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    ElectrumFlux = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    ElvenElementium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Emerald = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    EndSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Enderium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    EnderiumBase = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    EnergeticAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    EnergeticSilver = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    EnhancedGalgadorian = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    EnrichedNaquadahAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Epoxid = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    EpoxidFiberReinforced = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Eximite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    ExtremelyUnstableNaquadah = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Fayalite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    FierySteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Firestone = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Flerovium_GT5U = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Flint = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Fluor-Buergerite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Fluorspar = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Force = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Forsterite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    GaiaSpirit = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Galgadorian = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    GarnetRed = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    GarnetYellow = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Gold = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    GraniteBlack = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    GraniteRed = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Graphene = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Graphite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    GreenSapphire = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    HSLA = lib.mkOption {
                      type = lib.types.float;
                      default = 1.6;
                    };
                    HSSE = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    HSSG = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    HSSS = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Haderoth = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Hedenbergite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    HeeEndium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Hepatizon = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    HighDurabilityCompoundSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Hikarium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Ichorium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Incoloy-903 = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Infinity = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    InfinityCatalyst = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Infuscolium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    InfusedAir = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    InfusedEarth = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    InfusedEntropy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    InfusedFire = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    InfusedGold = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    InfusedOrder = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    InfusedWater = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Inolashite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Invar = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Iridium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Iron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    IronMagnetic = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    IronWood = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Jade = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Jasper = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Kanthal = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Knightmetal = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    LanthanumHexaboride = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Lead = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Ledox = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    LithiumChloride = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Livingrock = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Livingwood = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Lumiium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    MAR-Ce-M200Steel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    MAR-M200Steel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Magnalium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    MagnetoResonatic = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    MagnetohydrodynamicallyConstrainedStarMatter = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Manasteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Manganese = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Manyullyn = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Marble = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    MelodicAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    MetastableOganesson = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    MeteoricIron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    MeteoricSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Midasium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Mithril = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Molybdenum = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Mu-metal = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    MysteriousCrystal = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Mytryl = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Naquadah = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    NaquadahAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    NaquadahEnriched = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Naquadria = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Neodymium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    NeodymiumMagnetic = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    NetherQuartz = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    NetherStar = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Neutronium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0909;
                    };
                    Nichrome = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Nickel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    NickelZincFerrite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Olenite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Olivine = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Opal = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Orichalcum = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Oriharukon = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Orundum = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Osmiridium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Osmium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Oureclase = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Palladium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Permalloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    PigIron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Plastic = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Platinum = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Plutonium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Plutonium241 = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Polybenzimidazole = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Polycaprolactam = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    PolyphenyleneSulfide = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Polystyrene = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Polytetrafluoroethylene = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    PolyvinylChloride = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Prasiolite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    PreciousMetalsAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Prometheum = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    PulsatingIron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Quantium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Realgar = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    RedSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    RedZircon = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    RedstoneAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Reinforced = lib.mkOption {
                      type = lib.types.float;
                      default = 1.715;
                    };
                    Rhodium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Rhodium-PlatedPalladium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    RoseGold = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Rubber = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Rubracium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Ruby = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Ruridit = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Ruthenium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    SamariumMagnetic = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Sapphire = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Shadow = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    ShadowIron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    ShadowSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Shirabon = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Signalium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Silicone = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Silver = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Soularium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    SpaceTime = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    StainlessSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Steel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    SteelMagnetic = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Steeleaf = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    StellarAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    SterlingSilver = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Stone = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    StyreneButadieneRubber = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Sunnarium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    TPVAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Tairitsu = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    TanmolyiumBeta-C = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    TantalumHafniumCarbide = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Tanzanite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Terrasteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Thaumium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Thorium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Thorium232 = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Tiberium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    TinAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Titanium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.4;
                    };
                    Topaz = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    TranscendentMetal = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Trinium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Tritanium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Tungsten = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    TungstenCarbide = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    TungstenSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.285714;
                    };
                    Ultimet = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Universium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Uranium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Uranium235 = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Vanadio-Oxy-Dravite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    VanadiumSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    VibrantAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Vinteum = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    VividAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Void = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Voidmetal = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Vulcanite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Vyroxeres = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    WhiteDwarfMatter = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Wood = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    WoodSealed = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    WroughtIron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Zircaloy-2 = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Zircaloy-4 = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Zn-ThAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                  };
                };
              };
              stoneboundlevel = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    Adamantium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    AdamantiumAlloy = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    AdemicSteel = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Alduorite = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Aluminium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Alumite = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Amber = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Amethyst = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Angmallen = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Ardite = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Artherium-Sn = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    AstralSilver = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Atlarus = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    AtomicSeparationCatalyst = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    BArTiMaEuSNeK = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Basalt = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Beryllium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Bismuth = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    BismuthBronze = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Bismutite = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    BlackBronze = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    BlackDwarfMatter = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    BlackPlutonium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    BlackSteel = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Blaze = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    BloodInfusedIron = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    BlueSteel = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    BlueTopaz = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Brass = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Bronze = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Californium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    CallistoIce = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Carbon = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Carmot = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Celenegil = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    CertusQuartz = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Ceruclase = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Chrome = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Chromo-Alumino-Povondraite = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Chrysotile = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Cobalt = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    CobaltBrass = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    ConductiveIron = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    ConstructionFoam = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    CosmicNeutronium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    CrudeSteel = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    CrystallineAlloy = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    CrystallinePinkSlime = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    CubicZirconia = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Cupronickel = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Dalisenite = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    DamascusSteel = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    DarkIron = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    DarkSteel = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    DeepIron = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Desh = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Diamond = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Draconium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    DraconiumAwakened = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Dreamwood = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Duralumin = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Duranium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    ElectricalSteel = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Electrum = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    ElectrumFlux = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    ElvenElementium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Emerald = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    EndSteel = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Enderium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    EnderiumBase = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    EnergeticAlloy = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    EnergeticSilver = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    EnhancedGalgadorian = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    EnrichedNaquadahAlloy = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Epoxid = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    EpoxidFiberReinforced = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Eximite = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    ExtremelyUnstableNaquadah = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Fayalite = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    FierySteel = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Firestone = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Flerovium_GT5U = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Flint = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Fluor-Buergerite = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Fluorspar = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Force = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Forsterite = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    GaiaSpirit = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Galgadorian = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    GarnetRed = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    GarnetYellow = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Gold = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    GraniteBlack = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    GraniteRed = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Graphene = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Graphite = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    GreenSapphire = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    HSLA = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    HSSE = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    HSSG = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    HSSS = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Haderoth = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Hedenbergite = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    HeeEndium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Hepatizon = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    HighDurabilityCompoundSteel = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Hikarium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Ichorium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Incoloy-903 = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Infinity = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    InfinityCatalyst = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Infuscolium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    InfusedAir = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    InfusedEarth = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    InfusedEntropy = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    InfusedFire = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    InfusedGold = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    InfusedOrder = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    InfusedWater = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Inolashite = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Invar = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Iridium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Iron = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    IronMagnetic = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    IronWood = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Jade = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Jasper = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Kanthal = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Knightmetal = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    LanthanumHexaboride = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Lead = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Ledox = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    LithiumChloride = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Livingrock = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Livingwood = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Lumiium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    MAR-Ce-M200Steel = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    MAR-M200Steel = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Magnalium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    MagnetoResonatic = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    MagnetohydrodynamicallyConstrainedStarMatter = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Manasteel = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Manganese = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Manyullyn = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Marble = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    MelodicAlloy = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    MetastableOganesson = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    MeteoricIron = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    MeteoricSteel = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Midasium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Mithril = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Molybdenum = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Mu-metal = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    MysteriousCrystal = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Mytryl = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Naquadah = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    NaquadahAlloy = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    NaquadahEnriched = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Naquadria = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Neodymium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    NeodymiumMagnetic = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    NetherQuartz = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    NetherStar = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Neutronium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Nichrome = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Nickel = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    NickelZincFerrite = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Olenite = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Olivine = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Opal = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Orichalcum = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Oriharukon = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Orundum = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Osmiridium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Osmium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Oureclase = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Palladium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Permalloy = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    PigIron = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Plastic = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Platinum = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Plutonium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Plutonium241 = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Polybenzimidazole = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Polycaprolactam = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    PolyphenyleneSulfide = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Polystyrene = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Polytetrafluoroethylene = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    PolyvinylChloride = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Prasiolite = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    PreciousMetalsAlloy = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Prometheum = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    PulsatingIron = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Quantium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Realgar = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    RedSteel = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    RedZircon = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    RedstoneAlloy = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Reinforced = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Rhodium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Rhodium-PlatedPalladium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    RoseGold = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Rubber = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Rubracium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Ruby = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Ruridit = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Ruthenium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    SamariumMagnetic = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Sapphire = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Shadow = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    ShadowIron = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    ShadowSteel = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Shirabon = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Signalium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Silicone = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Silver = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Soularium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    SpaceTime = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    StainlessSteel = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Steel = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    SteelMagnetic = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Steeleaf = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    StellarAlloy = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    SterlingSilver = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Stone = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    StyreneButadieneRubber = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Sunnarium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    TPVAlloy = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Tairitsu = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    TanmolyiumBeta-C = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    TantalumHafniumCarbide = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Tanzanite = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Terrasteel = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Thaumium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Thorium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Thorium232 = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Tiberium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    TinAlloy = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Titanium = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    Topaz = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    TranscendentMetal = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Trinium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Tritanium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Tungsten = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    TungstenCarbide = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    TungstenSteel = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Ultimet = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Universium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Uranium = lib.mkOption {
                      type = lib.types.int;
                      default = -1;
                    };
                    Uranium235 = lib.mkOption {
                      type = lib.types.int;
                      default = -1;
                    };
                    Vanadio-Oxy-Dravite = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    VanadiumSteel = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    VibrantAlloy = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Vinteum = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    VividAlloy = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Void = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Voidmetal = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Vulcanite = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Vyroxeres = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    WhiteDwarfMatter = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Wood = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    WoodSealed = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    WroughtIron = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Zircaloy-2 = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Zircaloy-4 = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Zn-ThAlloy = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                  };
                };
              };
              reinforcedlevel = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    Adamantium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    AdamantiumAlloy = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    AdemicSteel = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Alduorite = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Aluminium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Alumite = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Amber = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Amethyst = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Angmallen = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Ardite = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Artherium-Sn = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    AstralSilver = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Atlarus = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    AtomicSeparationCatalyst = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    BArTiMaEuSNeK = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Basalt = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Beryllium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Bismuth = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    BismuthBronze = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Bismutite = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    BlackBronze = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    BlackDwarfMatter = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    BlackPlutonium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    BlackSteel = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    Blaze = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    BloodInfusedIron = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    BlueSteel = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    BlueTopaz = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Brass = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Bronze = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Californium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    CallistoIce = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Carbon = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Carmot = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Celenegil = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    CertusQuartz = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Ceruclase = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Chrome = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Chromo-Alumino-Povondraite = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Chrysotile = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Cobalt = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    CobaltBrass = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    ConductiveIron = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    ConstructionFoam = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    CosmicNeutronium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    CrudeSteel = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    CrystallineAlloy = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    CrystallinePinkSlime = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    CubicZirconia = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Cupronickel = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Dalisenite = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    DamascusSteel = lib.mkOption {
                      type = lib.types.int;
                      default = 2;
                    };
                    DarkIron = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    DarkSteel = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    DeepIron = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Desh = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Diamond = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Draconium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    DraconiumAwakened = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Dreamwood = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Duralumin = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Duranium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    ElectricalSteel = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Electrum = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    ElectrumFlux = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    ElvenElementium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Emerald = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    EndSteel = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Enderium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    EnderiumBase = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    EnergeticAlloy = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    EnergeticSilver = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    EnhancedGalgadorian = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    EnrichedNaquadahAlloy = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Epoxid = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    EpoxidFiberReinforced = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Eximite = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    ExtremelyUnstableNaquadah = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Fayalite = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    FierySteel = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Firestone = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Flerovium_GT5U = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Flint = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Fluor-Buergerite = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Fluorspar = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Force = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Forsterite = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    GaiaSpirit = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Galgadorian = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    GarnetRed = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    GarnetYellow = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Gold = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    GraniteBlack = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    GraniteRed = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Graphene = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Graphite = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    GreenSapphire = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    HSLA = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    HSSE = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    HSSG = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    HSSS = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Haderoth = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Hedenbergite = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    HeeEndium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Hepatizon = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    HighDurabilityCompoundSteel = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Hikarium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Ichorium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Incoloy-903 = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Infinity = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    InfinityCatalyst = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Infuscolium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    InfusedAir = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    InfusedEarth = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    InfusedEntropy = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    InfusedFire = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    InfusedGold = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    InfusedOrder = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    InfusedWater = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Inolashite = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Invar = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Iridium = lib.mkOption {
                      type = lib.types.int;
                      default = 2;
                    };
                    Iron = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    IronMagnetic = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    IronWood = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Jade = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Jasper = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Kanthal = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Knightmetal = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    LanthanumHexaboride = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Lead = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Ledox = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    LithiumChloride = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Livingrock = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Livingwood = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Lumiium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    MAR-Ce-M200Steel = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    MAR-M200Steel = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Magnalium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    MagnetoResonatic = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    MagnetohydrodynamicallyConstrainedStarMatter = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Manasteel = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Manganese = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Manyullyn = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Marble = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    MelodicAlloy = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    MetastableOganesson = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    MeteoricIron = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    MeteoricSteel = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    Midasium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Mithril = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Molybdenum = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Mu-metal = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    MysteriousCrystal = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Mytryl = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Naquadah = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    NaquadahAlloy = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    NaquadahEnriched = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Naquadria = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Neodymium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    NeodymiumMagnetic = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    NetherQuartz = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    NetherStar = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Neutronium = lib.mkOption {
                      type = lib.types.int;
                      default = 3;
                    };
                    Nichrome = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Nickel = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    NickelZincFerrite = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Olenite = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Olivine = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Opal = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Orichalcum = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Oriharukon = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Orundum = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Osmiridium = lib.mkOption {
                      type = lib.types.int;
                      default = 3;
                    };
                    Osmium = lib.mkOption {
                      type = lib.types.int;
                      default = 2;
                    };
                    Oureclase = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Palladium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Permalloy = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    PigIron = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Plastic = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Platinum = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Plutonium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Plutonium241 = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Polybenzimidazole = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Polycaprolactam = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    PolyphenyleneSulfide = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Polystyrene = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Polytetrafluoroethylene = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    PolyvinylChloride = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Prasiolite = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    PreciousMetalsAlloy = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Prometheum = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    PulsatingIron = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Quantium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Realgar = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    RedSteel = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    RedZircon = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    RedstoneAlloy = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Reinforced = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Rhodium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Rhodium-PlatedPalladium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    RoseGold = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Rubber = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Rubracium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Ruby = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Ruridit = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Ruthenium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    SamariumMagnetic = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Sapphire = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Shadow = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    ShadowIron = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    ShadowSteel = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Shirabon = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Signalium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Silicone = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Silver = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Soularium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    SpaceTime = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    StainlessSteel = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    Steel = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    SteelMagnetic = lib.mkOption {
                      type = lib.types.int;
                      default = 1;
                    };
                    Steeleaf = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    StellarAlloy = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    SterlingSilver = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Stone = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    StyreneButadieneRubber = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Sunnarium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    TPVAlloy = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Tairitsu = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    TanmolyiumBeta-C = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    TantalumHafniumCarbide = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Tanzanite = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Terrasteel = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Thaumium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Thorium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Thorium232 = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Tiberium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    TinAlloy = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Titanium = lib.mkOption {
                      type = lib.types.int;
                      default = 2;
                    };
                    Topaz = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    TranscendentMetal = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Trinium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Tritanium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Tungsten = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    TungstenCarbide = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    TungstenSteel = lib.mkOption {
                      type = lib.types.int;
                      default = 3;
                    };
                    Ultimet = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Universium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Uranium = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Uranium235 = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Vanadio-Oxy-Dravite = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    VanadiumSteel = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    VibrantAlloy = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Vinteum = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    VividAlloy = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Void = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Voidmetal = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Vulcanite = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Vyroxeres = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    WhiteDwarfMatter = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Wood = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    WoodSealed = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    WroughtIron = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Zircaloy-2 = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Zircaloy-4 = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                    Zn-ThAlloy = lib.mkOption {
                      type = lib.types.int;
                      default = 0;
                    };
                  };
                };
              };
              bowdrawspeed = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    Adamantium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    AdamantiumAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    AdemicSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Alduorite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Aluminium = lib.mkOption {
                      type = lib.types.float;
                      default = 0.8;
                    };
                    Alumite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Amber = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Amethyst = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Angmallen = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Ardite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Artherium-Sn = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    AstralSilver = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Atlarus = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    AtomicSeparationCatalyst = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    BArTiMaEuSNeK = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Basalt = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Beryllium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Bismuth = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    BismuthBronze = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Bismutite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    BlackBronze = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    BlackDwarfMatter = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    BlackPlutonium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    BlackSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Blaze = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    BlueSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    BlueTopaz = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Brass = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Bronze = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Californium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    CallistoIce = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Carbon = lib.mkOption {
                      type = lib.types.float;
                      default = 0.85;
                    };
                    Carmot = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Celenegil = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    CertusQuartz = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Ceruclase = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Chrome = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Chromo-Alumino-Povondraite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Chrysotile = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Cobalt = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    CobaltBrass = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    ConductiveIron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    ConstructionFoam = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    CosmicNeutronium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    CrudeSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    CrystallineAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    CrystallinePinkSlime = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    CubicZirconia = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Cupronickel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Dalisenite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    DamascusSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    DarkIron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    DarkSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    DeepIron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Desh = lib.mkOption {
                      type = lib.types.float;
                      default = 0.6;
                    };
                    Diamond = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Draconium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    DraconiumAwakened = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Dreamwood = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Duralumin = lib.mkOption {
                      type = lib.types.float;
                      default = 0.75;
                    };
                    Duranium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    ElectricalSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Electrum = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    ElectrumFlux = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    ElvenElementium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Emerald = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    EndSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Enderium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    EnderiumBase = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    EnergeticAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 0.667;
                    };
                    EnergeticSilver = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    EnhancedGalgadorian = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    EnrichedNaquadahAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Epoxid = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    EpoxidFiberReinforced = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Eximite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    ExtremelyUnstableNaquadah = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Fayalite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    FierySteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Firestone = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Flerovium_GT5U = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Flint = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Fluor-Buergerite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Fluorspar = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Force = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Forsterite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    GaiaSpirit = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Galgadorian = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    GarnetRed = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    GarnetYellow = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Gold = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    GraniteBlack = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    GraniteRed = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Graphene = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Graphite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    GreenSapphire = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    HSLA = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    HSSE = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    HSSG = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    HSSS = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Haderoth = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Hedenbergite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    HeeEndium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Hepatizon = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    HighDurabilityCompoundSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Hikarium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Ichorium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Incoloy-903 = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Infinity = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    InfinityCatalyst = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Infuscolium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    InfusedAir = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    InfusedEarth = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    InfusedEntropy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    InfusedFire = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    InfusedGold = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    InfusedOrder = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    InfusedWater = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Inolashite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Invar = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Iridium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Iron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    IronMagnetic = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    IronWood = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Jade = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Jasper = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Kanthal = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Knightmetal = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    LanthanumHexaboride = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Lead = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Ledox = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    LithiumChloride = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Livingrock = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Livingwood = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Lumiium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    MAR-Ce-M200Steel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    MAR-M200Steel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Magnalium = lib.mkOption {
                      type = lib.types.float;
                      default = 0.9;
                    };
                    MagnetoResonatic = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    MagnetohydrodynamicallyConstrainedStarMatter = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Manasteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Manganese = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Manyullyn = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Marble = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    MelodicAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    MetastableOganesson = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    MeteoricIron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    MeteoricSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Midasium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Mithril = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Molybdenum = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Mu-metal = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    MysteriousCrystal = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Mytryl = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Naquadah = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    NaquadahAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    NaquadahEnriched = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Naquadria = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Neodymium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    NeodymiumMagnetic = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    NetherQuartz = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    NetherStar = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Neutronium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Nichrome = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Nickel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    NickelZincFerrite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Olenite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Olivine = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Opal = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Orichalcum = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Oriharukon = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Orundum = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Osmiridium = lib.mkOption {
                      type = lib.types.float;
                      default = 0.466;
                    };
                    Osmium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Oureclase = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Palladium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Permalloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    PigIron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Plastic = lib.mkOption {
                      type = lib.types.float;
                      default = 0.5;
                    };
                    Platinum = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Plutonium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Plutonium241 = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Polybenzimidazole = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Polycaprolactam = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    PolyphenyleneSulfide = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Polystyrene = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Polytetrafluoroethylene = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    PolyvinylChloride = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Prasiolite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    PreciousMetalsAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Prometheum = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    PulsatingIron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Quantium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Realgar = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    RedSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    RedZircon = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    RedstoneAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Reinforced = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Rhodium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Rhodium-PlatedPalladium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    RoseGold = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Rubber = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Rubracium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Ruby = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Ruridit = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Ruthenium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    SamariumMagnetic = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Sapphire = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Shadow = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    ShadowIron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    ShadowSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Shirabon = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Signalium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Silicone = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Silver = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Soularium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    SpaceTime = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    StainlessSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Steel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    SteelMagnetic = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Steeleaf = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    StellarAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    SterlingSilver = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Stone = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    StyreneButadieneRubber = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Sunnarium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    TPVAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Tairitsu = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    TanmolyiumBeta-C = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    TantalumHafniumCarbide = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Tanzanite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Terrasteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Thaumium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Thorium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Thorium232 = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Tiberium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    TinAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Titanium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Topaz = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    TranscendentMetal = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Trinium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Tritanium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Tungsten = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    TungstenCarbide = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    TungstenSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Ultimet = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Universium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Uranium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Uranium235 = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Vanadio-Oxy-Dravite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    VanadiumSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    VibrantAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Vinteum = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    VividAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Void = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Voidmetal = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Vulcanite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Vyroxeres = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    WhiteDwarfMatter = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Wood = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    WoodSealed = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    WroughtIron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Zircaloy-2 = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Zircaloy-4 = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Zn-ThAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                  };
                };
              };
              bowflightspeed = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    Adamantium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    AdamantiumAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    AdemicSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Alduorite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Aluminium = lib.mkOption {
                      type = lib.types.float;
                      default = 2.666;
                    };
                    Alumite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Amber = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Amethyst = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Angmallen = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Ardite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Artherium-Sn = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    AstralSilver = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Atlarus = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    AtomicSeparationCatalyst = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    BArTiMaEuSNeK = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Basalt = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Beryllium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Bismuth = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    BismuthBronze = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Bismutite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    BlackBronze = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    BlackDwarfMatter = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    BlackPlutonium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    BlackSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Blaze = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    BlueSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    BlueTopaz = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Brass = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Bronze = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Californium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    CallistoIce = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Carbon = lib.mkOption {
                      type = lib.types.float;
                      default = 3.2;
                    };
                    Carmot = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Celenegil = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    CertusQuartz = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Ceruclase = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Chrome = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Chromo-Alumino-Povondraite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Chrysotile = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Cobalt = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    CobaltBrass = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    ConductiveIron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    ConstructionFoam = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    CosmicNeutronium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    CrudeSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    CrystallineAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    CrystallinePinkSlime = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    CubicZirconia = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Cupronickel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Dalisenite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    DamascusSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    DarkIron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    DarkSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    DeepIron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Desh = lib.mkOption {
                      type = lib.types.float;
                      default = 1.25714;
                    };
                    Diamond = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Draconium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    DraconiumAwakened = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Dreamwood = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Duralumin = lib.mkOption {
                      type = lib.types.float;
                      default = 1.92;
                    };
                    Duranium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    ElectricalSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Electrum = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    ElectrumFlux = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    ElvenElementium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Emerald = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    EndSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Enderium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    EnderiumBase = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    EnergeticAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.84;
                    };
                    EnergeticSilver = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    EnhancedGalgadorian = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    EnrichedNaquadahAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Epoxid = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    EpoxidFiberReinforced = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Eximite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    ExtremelyUnstableNaquadah = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Fayalite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    FierySteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Firestone = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Flerovium_GT5U = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Flint = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Fluor-Buergerite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Fluorspar = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Force = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Forsterite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    GaiaSpirit = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Galgadorian = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    GarnetRed = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    GarnetYellow = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Gold = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    GraniteBlack = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    GraniteRed = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Graphene = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Graphite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    GreenSapphire = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    HSLA = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    HSSE = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    HSSG = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    HSSS = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Haderoth = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Hedenbergite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    HeeEndium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Hepatizon = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    HighDurabilityCompoundSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Hikarium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Ichorium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Incoloy-903 = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Infinity = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    InfinityCatalyst = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Infuscolium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    InfusedAir = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    InfusedEarth = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    InfusedEntropy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    InfusedFire = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    InfusedGold = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    InfusedOrder = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    InfusedWater = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Inolashite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Invar = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Iridium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Iron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    IronMagnetic = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    IronWood = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Jade = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Jasper = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Kanthal = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Knightmetal = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    LanthanumHexaboride = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Lead = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Ledox = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    LithiumChloride = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Livingrock = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Livingwood = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Lumiium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    MAR-Ce-M200Steel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    MAR-M200Steel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Magnalium = lib.mkOption {
                      type = lib.types.float;
                      default = 2.22;
                    };
                    MagnetoResonatic = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    MagnetohydrodynamicallyConstrainedStarMatter = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Manasteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Manganese = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Manyullyn = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Marble = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    MelodicAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    MetastableOganesson = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    MeteoricIron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    MeteoricSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Midasium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Mithril = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Molybdenum = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Mu-metal = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    MysteriousCrystal = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Mytryl = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Naquadah = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    NaquadahAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    NaquadahEnriched = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Naquadria = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Neodymium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    NeodymiumMagnetic = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    NetherQuartz = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    NetherStar = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Neutronium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Nichrome = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Nickel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    NickelZincFerrite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Olenite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Olivine = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Opal = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Orichalcum = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Oriharukon = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Orundum = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Osmiridium = lib.mkOption {
                      type = lib.types.float;
                      default = 2.0;
                    };
                    Osmium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Oureclase = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Palladium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Permalloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    PigIron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Plastic = lib.mkOption {
                      type = lib.types.float;
                      default = 5.6;
                    };
                    Platinum = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Plutonium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Plutonium241 = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Polybenzimidazole = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Polycaprolactam = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    PolyphenyleneSulfide = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Polystyrene = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Polytetrafluoroethylene = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    PolyvinylChloride = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Prasiolite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    PreciousMetalsAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Prometheum = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    PulsatingIron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Quantium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Realgar = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    RedSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    RedZircon = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    RedstoneAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Reinforced = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Rhodium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Rhodium-PlatedPalladium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    RoseGold = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Rubber = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Rubracium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Ruby = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Ruridit = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Ruthenium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    SamariumMagnetic = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Sapphire = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Shadow = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    ShadowIron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    ShadowSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Shirabon = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Signalium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Silicone = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Silver = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Soularium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    SpaceTime = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    StainlessSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Steel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    SteelMagnetic = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Steeleaf = lib.mkOption {
                      type = lib.types.float;
                      default = 1.68;
                    };
                    StellarAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    SterlingSilver = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Stone = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    StyreneButadieneRubber = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Sunnarium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    TPVAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Tairitsu = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    TanmolyiumBeta-C = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    TantalumHafniumCarbide = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Tanzanite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Terrasteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Thaumium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Thorium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Thorium232 = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Tiberium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    TinAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Titanium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Topaz = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    TranscendentMetal = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Trinium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Tritanium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Tungsten = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    TungstenCarbide = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    TungstenSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Ultimet = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Universium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Uranium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Uranium235 = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Vanadio-Oxy-Dravite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    VanadiumSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    VibrantAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Vinteum = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    VividAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Void = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Voidmetal = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Vulcanite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Vyroxeres = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    WhiteDwarfMatter = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Wood = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    WoodSealed = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    WroughtIron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Zircaloy-2 = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Zircaloy-4 = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Zn-ThAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                  };
                };
              };
              arrowmass = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    Adamantium = lib.mkOption {
                      type = lib.types.float;
                      default = 0.204;
                    };
                    AdamantiumAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    AdemicSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Alduorite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Aluminium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Alumite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Amber = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Amethyst = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Angmallen = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Ardite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Artherium-Sn = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    AstralSilver = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Atlarus = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    AtomicSeparationCatalyst = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    BArTiMaEuSNeK = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Basalt = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Beryllium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Bismuth = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    BismuthBronze = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Bismutite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    BlackBronze = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    BlackDwarfMatter = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    BlackPlutonium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    BlackSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Blaze = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    BlueSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 0.16;
                    };
                    BlueTopaz = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Brass = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Bronze = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Californium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    CallistoIce = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Carbon = lib.mkOption {
                      type = lib.types.float;
                      default = 0.066;
                    };
                    Carmot = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Celenegil = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    CertusQuartz = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Ceruclase = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Chrome = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Chromo-Alumino-Povondraite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Chrysotile = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Cobalt = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    CobaltBrass = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    ConductiveIron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    ConstructionFoam = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    CosmicNeutronium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    CrudeSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    CrystallineAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    CrystallinePinkSlime = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    CubicZirconia = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Cupronickel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Dalisenite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    DamascusSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    DarkIron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    DarkSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    DeepIron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Desh = lib.mkOption {
                      type = lib.types.float;
                      default = 0.204;
                    };
                    Diamond = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Draconium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    DraconiumAwakened = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Dreamwood = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Duralumin = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Duranium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    ElectricalSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Electrum = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    ElectrumFlux = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    ElvenElementium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Emerald = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    EndSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Enderium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    EnderiumBase = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    EnergeticAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 0.010204;
                    };
                    EnergeticSilver = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    EnhancedGalgadorian = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    EnrichedNaquadahAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Epoxid = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    EpoxidFiberReinforced = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Eximite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    ExtremelyUnstableNaquadah = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Fayalite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    FierySteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Firestone = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Flerovium_GT5U = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Flint = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Fluor-Buergerite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Fluorspar = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Force = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Forsterite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    GaiaSpirit = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Galgadorian = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    GarnetRed = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    GarnetYellow = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Gold = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    GraniteBlack = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    GraniteRed = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Graphene = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Graphite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    GreenSapphire = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    HSLA = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    HSSE = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    HSSG = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    HSSS = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Haderoth = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Hedenbergite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    HeeEndium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Hepatizon = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    HighDurabilityCompoundSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Hikarium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Ichorium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Incoloy-903 = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Infinity = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    InfinityCatalyst = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Infuscolium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    InfusedAir = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    InfusedEarth = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    InfusedEntropy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    InfusedFire = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    InfusedGold = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    InfusedOrder = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    InfusedWater = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Inolashite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Invar = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Iridium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Iron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    IronMagnetic = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    IronWood = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Jade = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Jasper = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Kanthal = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Knightmetal = lib.mkOption {
                      type = lib.types.float;
                      default = 0.21408;
                    };
                    LanthanumHexaboride = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Lead = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Ledox = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    LithiumChloride = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Livingrock = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Livingwood = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Lumiium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    MAR-Ce-M200Steel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    MAR-M200Steel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Magnalium = lib.mkOption {
                      type = lib.types.float;
                      default = 0.048;
                    };
                    MagnetoResonatic = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    MagnetohydrodynamicallyConstrainedStarMatter = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Manasteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Manganese = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Manyullyn = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Marble = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    MelodicAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    MetastableOganesson = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    MeteoricIron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    MeteoricSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 0.21428;
                    };
                    Midasium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Mithril = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Molybdenum = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Mu-metal = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    MysteriousCrystal = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Mytryl = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Naquadah = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    NaquadahAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    NaquadahEnriched = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Naquadria = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Neodymium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    NeodymiumMagnetic = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    NetherQuartz = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    NetherStar = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Neutronium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Nichrome = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Nickel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    NickelZincFerrite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Olenite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Olivine = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Opal = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Orichalcum = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Oriharukon = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Orundum = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Osmiridium = lib.mkOption {
                      type = lib.types.float;
                      default = 0.010204;
                    };
                    Osmium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Oureclase = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Palladium = lib.mkOption {
                      type = lib.types.float;
                      default = 0.188679;
                    };
                    Permalloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    PigIron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Plastic = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Platinum = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Plutonium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Plutonium241 = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Polybenzimidazole = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Polycaprolactam = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    PolyphenyleneSulfide = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Polystyrene = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Polytetrafluoroethylene = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    PolyvinylChloride = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Prasiolite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    PreciousMetalsAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Prometheum = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    PulsatingIron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Quantium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Realgar = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    RedSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 0.305;
                    };
                    RedZircon = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    RedstoneAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Reinforced = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Rhodium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Rhodium-PlatedPalladium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    RoseGold = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Rubber = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Rubracium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Ruby = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Ruridit = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Ruthenium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    SamariumMagnetic = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Sapphire = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Shadow = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    ShadowIron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    ShadowSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Shirabon = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Signalium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Silicone = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Silver = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Soularium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    SpaceTime = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    StainlessSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Steel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    SteelMagnetic = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Steeleaf = lib.mkOption {
                      type = lib.types.float;
                      default = 0.025641;
                    };
                    StellarAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    SterlingSilver = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Stone = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    StyreneButadieneRubber = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Sunnarium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    TPVAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Tairitsu = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    TanmolyiumBeta-C = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    TantalumHafniumCarbide = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Tanzanite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Terrasteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Thaumium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Thorium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Thorium232 = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Tiberium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    TinAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Titanium = lib.mkOption {
                      type = lib.types.float;
                      default = 15.0;
                    };
                    Topaz = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    TranscendentMetal = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Trinium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Tritanium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Tungsten = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    TungstenCarbide = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    TungstenSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 15.0;
                    };
                    Ultimet = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Universium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Uranium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Uranium235 = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Vanadio-Oxy-Dravite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    VanadiumSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    VibrantAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Vinteum = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    VividAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Void = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Voidmetal = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Vulcanite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Vyroxeres = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    WhiteDwarfMatter = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Wood = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    WoodSealed = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    WroughtIron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Zircaloy-2 = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Zircaloy-4 = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Zn-ThAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                  };
                };
              };
              arrowfragility = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    Adamantium = lib.mkOption {
                      type = lib.types.float;
                      default = 0.01;
                    };
                    AdamantiumAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    AdemicSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Alduorite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Aluminium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Alumite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Amber = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Amethyst = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Angmallen = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Ardite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Artherium-Sn = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    AstralSilver = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Atlarus = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    AtomicSeparationCatalyst = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    BArTiMaEuSNeK = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Basalt = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Beryllium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Bismuth = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    BismuthBronze = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Bismutite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    BlackBronze = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    BlackDwarfMatter = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    BlackPlutonium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    BlackSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Blaze = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    BlueSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    BlueTopaz = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Brass = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Bronze = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Californium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    CallistoIce = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Carbon = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Carmot = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Celenegil = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    CertusQuartz = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Ceruclase = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Chrome = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Chromo-Alumino-Povondraite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Chrysotile = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Cobalt = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    CobaltBrass = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    ConductiveIron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    ConstructionFoam = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    CosmicNeutronium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    CrudeSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    CrystallineAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    CrystallinePinkSlime = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    CubicZirconia = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Cupronickel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Dalisenite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    DamascusSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    DarkIron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    DarkSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    DeepIron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Desh = lib.mkOption {
                      type = lib.types.float;
                      default = 0.01;
                    };
                    Diamond = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Draconium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    DraconiumAwakened = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Dreamwood = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Duralumin = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Duranium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    ElectricalSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Electrum = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    ElectrumFlux = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    ElvenElementium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Emerald = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    EndSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Enderium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    EnderiumBase = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    EnergeticAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 0.01;
                    };
                    EnergeticSilver = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    EnhancedGalgadorian = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    EnrichedNaquadahAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Epoxid = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    EpoxidFiberReinforced = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Eximite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    ExtremelyUnstableNaquadah = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Fayalite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    FierySteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Firestone = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Flerovium_GT5U = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Flint = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Fluor-Buergerite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Fluorspar = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Force = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Forsterite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    GaiaSpirit = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Galgadorian = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    GarnetRed = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    GarnetYellow = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Gold = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    GraniteBlack = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    GraniteRed = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Graphene = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Graphite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    GreenSapphire = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    HSLA = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    HSSE = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    HSSG = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    HSSS = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Haderoth = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Hedenbergite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    HeeEndium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Hepatizon = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    HighDurabilityCompoundSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Hikarium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Ichorium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Incoloy-903 = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Infinity = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    InfinityCatalyst = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Infuscolium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    InfusedAir = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    InfusedEarth = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    InfusedEntropy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    InfusedFire = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    InfusedGold = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    InfusedOrder = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    InfusedWater = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Inolashite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Invar = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Iridium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Iron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    IronMagnetic = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    IronWood = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Jade = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Jasper = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Kanthal = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Knightmetal = lib.mkOption {
                      type = lib.types.float;
                      default = 0.01;
                    };
                    LanthanumHexaboride = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Lead = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Ledox = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    LithiumChloride = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Livingrock = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Livingwood = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Lumiium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    MAR-Ce-M200Steel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    MAR-M200Steel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Magnalium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    MagnetoResonatic = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    MagnetohydrodynamicallyConstrainedStarMatter = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Manasteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Manganese = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Manyullyn = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Marble = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    MelodicAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    MetastableOganesson = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    MeteoricIron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    MeteoricSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 0.01;
                    };
                    Midasium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Mithril = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Molybdenum = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Mu-metal = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    MysteriousCrystal = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Mytryl = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Naquadah = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    NaquadahAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    NaquadahEnriched = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Naquadria = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Neodymium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    NeodymiumMagnetic = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    NetherQuartz = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    NetherStar = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Neutronium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Nichrome = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Nickel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    NickelZincFerrite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Olenite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Olivine = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Opal = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Orichalcum = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Oriharukon = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Orundum = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Osmiridium = lib.mkOption {
                      type = lib.types.float;
                      default = 0.01;
                    };
                    Osmium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Oureclase = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Palladium = lib.mkOption {
                      type = lib.types.float;
                      default = 0.01;
                    };
                    Permalloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    PigIron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Plastic = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Platinum = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Plutonium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Plutonium241 = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Polybenzimidazole = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Polycaprolactam = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    PolyphenyleneSulfide = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Polystyrene = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Polytetrafluoroethylene = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    PolyvinylChloride = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Prasiolite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    PreciousMetalsAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Prometheum = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    PulsatingIron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Quantium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Realgar = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    RedSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    RedZircon = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    RedstoneAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Reinforced = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Rhodium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Rhodium-PlatedPalladium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    RoseGold = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Rubber = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Rubracium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Ruby = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Ruridit = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Ruthenium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    SamariumMagnetic = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Sapphire = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Shadow = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    ShadowIron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    ShadowSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Shirabon = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Signalium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Silicone = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Silver = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Soularium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    SpaceTime = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    StainlessSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Steel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    SteelMagnetic = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Steeleaf = lib.mkOption {
                      type = lib.types.float;
                      default = 0.01;
                    };
                    StellarAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    SterlingSilver = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Stone = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    StyreneButadieneRubber = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Sunnarium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    TPVAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Tairitsu = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    TanmolyiumBeta-C = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    TantalumHafniumCarbide = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Tanzanite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Terrasteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Thaumium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Thorium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Thorium232 = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Tiberium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    TinAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Titanium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Topaz = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    TranscendentMetal = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Trinium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Tritanium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Tungsten = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    TungstenCarbide = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    TungstenSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Ultimet = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Universium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Uranium = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Uranium235 = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Vanadio-Oxy-Dravite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    VanadiumSteel = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    VibrantAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Vinteum = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    VividAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Void = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Voidmetal = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Vulcanite = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Vyroxeres = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    WhiteDwarfMatter = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Wood = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    WoodSealed = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    WroughtIron = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Zircaloy-2 = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Zircaloy-4 = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                    Zn-ThAlloy = lib.mkOption {
                      type = lib.types.float;
                      default = 1.0;
                    };
                  };
                };
              };
              material-id = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    Adamantium = lib.mkOption {
                      type = lib.types.int;
                      default = 1536;
                    };
                    AdamantiumAlloy = lib.mkOption {
                      type = lib.types.int;
                      default = 1721;
                    };
                    AdemicSteel = lib.mkOption {
                      type = lib.types.int;
                      default = 1713;
                    };
                    Alduorite = lib.mkOption {
                      type = lib.types.int;
                      default = 1537;
                    };
                    Aluminium = lib.mkOption {
                      type = lib.types.int;
                      default = 1500;
                    };
                    Alumite = lib.mkOption {
                      type = lib.types.int;
                      default = 1686;
                    };
                    Amber = lib.mkOption {
                      type = lib.types.int;
                      default = 1538;
                    };
                    Amethyst = lib.mkOption {
                      type = lib.types.int;
                      default = 1621;
                    };
                    Angmallen = lib.mkOption {
                      type = lib.types.int;
                      default = 1539;
                    };
                    Artherium-Sn = lib.mkOption {
                      type = lib.types.int;
                      default = 1727;
                    };
                    AstralSilver = lib.mkOption {
                      type = lib.types.int;
                      default = 1637;
                    };
                    Atlarus = lib.mkOption {
                      type = lib.types.int;
                      default = 1540;
                    };
                    AtomicSeparationCatalyst = lib.mkOption {
                      type = lib.types.int;
                      default = 1715;
                    };
                    BArTiMaEuSNeK = lib.mkOption {
                      type = lib.types.int;
                      default = 1705;
                    };
                    Basalt = lib.mkOption {
                      type = lib.types.int;
                      default = 1674;
                    };
                    Beryllium = lib.mkOption {
                      type = lib.types.int;
                      default = 1501;
                    };
                    Bismuth = lib.mkOption {
                      type = lib.types.int;
                      default = 1502;
                    };
                    BismuthBronze = lib.mkOption {
                      type = lib.types.int;
                      default = 1630;
                    };
                    Bismutite = lib.mkOption {
                      type = lib.types.int;
                      default = 1691;
                    };
                    BlackBronze = lib.mkOption {
                      type = lib.types.int;
                      default = 1629;
                    };
                    BlackDwarfMatter = lib.mkOption {
                      type = lib.types.int;
                      default = 1745;
                    };
                    BlackPlutonium = lib.mkOption {
                      type = lib.types.int;
                      default = 1657;
                    };
                    BlackSteel = lib.mkOption {
                      type = lib.types.int;
                      default = 1631;
                    };
                    Blaze = lib.mkOption {
                      type = lib.types.int;
                      default = 1530;
                    };
                    BloodInfusedIron = lib.mkOption {
                      type = lib.types.int;
                      default = 1541;
                    };
                    BlueSteel = lib.mkOption {
                      type = lib.types.int;
                      default = 1633;
                    };
                    BlueTopaz = lib.mkOption {
                      type = lib.types.int;
                      default = 1590;
                    };
                    Brass = lib.mkOption {
                      type = lib.types.int;
                      default = 1591;
                    };
                    Californium = lib.mkOption {
                      type = lib.types.int;
                      default = 1704;
                    };
                    CallistoIce = lib.mkOption {
                      type = lib.types.int;
                      default = 1658;
                    };
                    Carbon = lib.mkOption {
                      type = lib.types.int;
                      default = 1503;
                    };
                    Carmot = lib.mkOption {
                      type = lib.types.int;
                      default = 1542;
                    };
                    Celenegil = lib.mkOption {
                      type = lib.types.int;
                      default = 1543;
                    };
                    CertusQuartz = lib.mkOption {
                      type = lib.types.int;
                      default = 1544;
                    };
                    Ceruclase = lib.mkOption {
                      type = lib.types.int;
                      default = 1545;
                    };
                    Chrome = lib.mkOption {
                      type = lib.types.int;
                      default = 1504;
                    };
                    Chromo-Alumino-Povondraite = lib.mkOption {
                      type = lib.types.int;
                      default = 1694;
                    };
                    Chrysotile = lib.mkOption {
                      type = lib.types.int;
                      default = 1644;
                    };
                    CobaltBrass = lib.mkOption {
                      type = lib.types.int;
                      default = 1638;
                    };
                    ConductiveIron = lib.mkOption {
                      type = lib.types.int;
                      default = 1527;
                    };
                    ConstructionFoam = lib.mkOption {
                      type = lib.types.int;
                      default = 1673;
                    };
                    CosmicNeutronium = lib.mkOption {
                      type = lib.types.int;
                      default = 1671;
                    };
                    CrudeSteel = lib.mkOption {
                      type = lib.types.int;
                      default = 1678;
                    };
                    CrystallineAlloy = lib.mkOption {
                      type = lib.types.int;
                      default = 1679;
                    };
                    CrystallinePinkSlime = lib.mkOption {
                      type = lib.types.int;
                      default = 1682;
                    };
                    CubicZirconia = lib.mkOption {
                      type = lib.types.int;
                      default = 1692;
                    };
                    Cupronickel = lib.mkOption {
                      type = lib.types.int;
                      default = 1592;
                    };
                    Dalisenite = lib.mkOption {
                      type = lib.types.int;
                      default = 1729;
                    };
                    DamascusSteel = lib.mkOption {
                      type = lib.types.int;
                      default = 1634;
                    };
                    DarkIron = lib.mkOption {
                      type = lib.types.int;
                      default = 1546;
                    };
                    DarkSteel = lib.mkOption {
                      type = lib.types.int;
                      default = 1604;
                    };
                    DeepIron = lib.mkOption {
                      type = lib.types.int;
                      default = 1593;
                    };
                    Desh = lib.mkOption {
                      type = lib.types.int;
                      default = 1547;
                    };
                    Diamond = lib.mkOption {
                      type = lib.types.int;
                      default = 1594;
                    };
                    Draconium = lib.mkOption {
                      type = lib.types.int;
                      default = 1532;
                    };
                    DraconiumAwakened = lib.mkOption {
                      type = lib.types.int;
                      default = 1533;
                    };
                    Dreamwood = lib.mkOption {
                      type = lib.types.int;
                      default = 1690;
                    };
                    Duralumin = lib.mkOption {
                      type = lib.types.int;
                      default = 1659;
                    };
                    Duranium = lib.mkOption {
                      type = lib.types.int;
                      default = 1548;
                    };
                    ElectricalSteel = lib.mkOption {
                      type = lib.types.int;
                      default = 1528;
                    };
                    Electrum = lib.mkOption {
                      type = lib.types.int;
                      default = 1595;
                    };
                    ElectrumFlux = lib.mkOption {
                      type = lib.types.int;
                      default = 1549;
                    };
                    ElvenElementium = lib.mkOption {
                      type = lib.types.int;
                      default = 1742;
                    };
                    Emerald = lib.mkOption {
                      type = lib.types.int;
                      default = 1596;
                    };
                    EndSteel = lib.mkOption {
                      type = lib.types.int;
                      default = 1677;
                    };
                    Enderium = lib.mkOption {
                      type = lib.types.int;
                      default = 1551;
                    };
                    EnderiumBase = lib.mkOption {
                      type = lib.types.int;
                      default = 1550;
                    };
                    EnergeticAlloy = lib.mkOption {
                      type = lib.types.int;
                      default = 1635;
                    };
                    EnergeticSilver = lib.mkOption {
                      type = lib.types.int;
                      default = 1683;
                    };
                    EnhancedGalgadorian = lib.mkOption {
                      type = lib.types.int;
                      default = 1597;
                    };
                    EnrichedNaquadahAlloy = lib.mkOption {
                      type = lib.types.int;
                      default = 1733;
                    };
                    Epoxid = lib.mkOption {
                      type = lib.types.int;
                      default = 1607;
                    };
                    EpoxidFiberReinforced = lib.mkOption {
                      type = lib.types.int;
                      default = 1666;
                    };
                    Eximite = lib.mkOption {
                      type = lib.types.int;
                      default = 1552;
                    };
                    ExtremelyUnstableNaquadah = lib.mkOption {
                      type = lib.types.int;
                      default = 1716;
                    };
                    Fayalite = lib.mkOption {
                      type = lib.types.int;
                      default = 1698;
                    };
                    FierySteel = lib.mkOption {
                      type = lib.types.int;
                      default = 1553;
                    };
                    Firestone = lib.mkOption {
                      type = lib.types.int;
                      default = 1554;
                    };
                    Flerovium_GT5U = lib.mkOption {
                      type = lib.types.int;
                      default = 1672;
                    };
                    Fluor-Buergerite = lib.mkOption {
                      type = lib.types.int;
                      default = 1693;
                    };
                    Fluorspar = lib.mkOption {
                      type = lib.types.int;
                      default = 1711;
                    };
                    Force = lib.mkOption {
                      type = lib.types.int;
                      default = 1555;
                    };
                    Forsterite = lib.mkOption {
                      type = lib.types.int;
                      default = 1699;
                    };
                    GaiaSpirit = lib.mkOption {
                      type = lib.types.int;
                      default = 1688;
                    };
                    Galgadorian = lib.mkOption {
                      type = lib.types.int;
                      default = 1598;
                    };
                    GarnetRed = lib.mkOption {
                      type = lib.types.int;
                      default = 1639;
                    };
                    GarnetYellow = lib.mkOption {
                      type = lib.types.int;
                      default = 1640;
                    };
                    Gold = lib.mkOption {
                      type = lib.types.int;
                      default = 1505;
                    };
                    GraniteBlack = lib.mkOption {
                      type = lib.types.int;
                      default = 1642;
                    };
                    GraniteRed = lib.mkOption {
                      type = lib.types.int;
                      default = 1643;
                    };
                    Graphene = lib.mkOption {
                      type = lib.types.int;
                      default = 1557;
                    };
                    Graphite = lib.mkOption {
                      type = lib.types.int;
                      default = 1556;
                    };
                    GreenSapphire = lib.mkOption {
                      type = lib.types.int;
                      default = 1599;
                    };
                    HSLA = lib.mkOption {
                      type = lib.types.int;
                      default = 1560;
                    };
                    HSSE = lib.mkOption {
                      type = lib.types.int;
                      default = 1652;
                    };
                    HSSG = lib.mkOption {
                      type = lib.types.int;
                      default = 1651;
                    };
                    HSSS = lib.mkOption {
                      type = lib.types.int;
                      default = 1653;
                    };
                    Haderoth = lib.mkOption {
                      type = lib.types.int;
                      default = 1558;
                    };
                    Hedenbergite = lib.mkOption {
                      type = lib.types.int;
                      default = 1700;
                    };
                    HeeEndium = lib.mkOption {
                      type = lib.types.int;
                      default = 1526;
                    };
                    Hepatizon = lib.mkOption {
                      type = lib.types.int;
                      default = 1559;
                    };
                    HighDurabilityCompoundSteel = lib.mkOption {
                      type = lib.types.int;
                      default = 1712;
                    };
                    Hikarium = lib.mkOption {
                      type = lib.types.int;
                      default = 1730;
                    };
                    Ichorium = lib.mkOption {
                      type = lib.types.int;
                      default = 1685;
                    };
                    Incoloy-903 = lib.mkOption {
                      type = lib.types.int;
                      default = 1720;
                    };
                    Infinity = lib.mkOption {
                      type = lib.types.int;
                      default = 1669;
                    };
                    InfinityCatalyst = lib.mkOption {
                      type = lib.types.int;
                      default = 1668;
                    };
                    Infuscolium = lib.mkOption {
                      type = lib.types.int;
                      default = 1561;
                    };
                    InfusedAir = lib.mkOption {
                      type = lib.types.int;
                      default = 1563;
                    };
                    InfusedEarth = lib.mkOption {
                      type = lib.types.int;
                      default = 1565;
                    };
                    InfusedEntropy = lib.mkOption {
                      type = lib.types.int;
                      default = 1567;
                    };
                    InfusedFire = lib.mkOption {
                      type = lib.types.int;
                      default = 1564;
                    };
                    InfusedGold = lib.mkOption {
                      type = lib.types.int;
                      default = 1562;
                    };
                    InfusedOrder = lib.mkOption {
                      type = lib.types.int;
                      default = 1568;
                    };
                    InfusedWater = lib.mkOption {
                      type = lib.types.int;
                      default = 1566;
                    };
                    Inolashite = lib.mkOption {
                      type = lib.types.int;
                      default = 1569;
                    };
                    Invar = lib.mkOption {
                      type = lib.types.int;
                      default = 1600;
                    };
                    Iridium = lib.mkOption {
                      type = lib.types.int;
                      default = 1506;
                    };
                    IronMagnetic = lib.mkOption {
                      type = lib.types.int;
                      default = 1646;
                    };
                    IronWood = lib.mkOption {
                      type = lib.types.int;
                      default = 1618;
                    };
                    Jade = lib.mkOption {
                      type = lib.types.int;
                      default = 1570;
                    };
                    Jasper = lib.mkOption {
                      type = lib.types.int;
                      default = 1571;
                    };
                    Kanthal = lib.mkOption {
                      type = lib.types.int;
                      default = 1601;
                    };
                    Knightmetal = lib.mkOption {
                      type = lib.types.int;
                      default = 1626;
                    };
                    LanthanumHexaboride = lib.mkOption {
                      type = lib.types.int;
                      default = 1542;
                    };
                    Lead = lib.mkOption {
                      type = lib.types.int;
                      default = 1507;
                    };
                    Ledox = lib.mkOption {
                      type = lib.types.int;
                      default = 1654;
                    };
                    LithiumChloride = lib.mkOption {
                      type = lib.types.int;
                      default = 1724;
                    };
                    Livingrock = lib.mkOption {
                      type = lib.types.int;
                      default = 1687;
                    };
                    Livingwood = lib.mkOption {
                      type = lib.types.int;
                      default = 1689;
                    };
                    Lumiium = lib.mkOption {
                      type = lib.types.int;
                      default = 1726;
                    };
                    MAR-Ce-M200Steel = lib.mkOption {
                      type = lib.types.int;
                      default = 1723;
                    };
                    MAR-M200Steel = lib.mkOption {
                      type = lib.types.int;
                      default = 1722;
                    };
                    Magnalium = lib.mkOption {
                      type = lib.types.int;
                      default = 1602;
                    };
                    MagnetoResonatic = lib.mkOption {
                      type = lib.types.int;
                      default = 1703;
                    };
                    MagnetohydrodynamicallyConstrainedStarMatter = lib.mkOption {
                      type = lib.types.int;
                      default = 1743;
                    };
                    Manasteel = lib.mkOption {
                      type = lib.types.int;
                      default = 1740;
                    };
                    Manganese = lib.mkOption {
                      type = lib.types.int;
                      default = 1508;
                    };
                    Marble = lib.mkOption {
                      type = lib.types.int;
                      default = 1675;
                    };
                    MelodicAlloy = lib.mkOption {
                      type = lib.types.int;
                      default = 1680;
                    };
                    MetastableOganesson = lib.mkOption {
                      type = lib.types.int;
                      default = 1734;
                    };
                    MeteoricIron = lib.mkOption {
                      type = lib.types.int;
                      default = 1572;
                    };
                    MeteoricSteel = lib.mkOption {
                      type = lib.types.int;
                      default = 1573;
                    };
                    Molybdenum = lib.mkOption {
                      type = lib.types.int;
                      default = 1509;
                    };
                    Mu-metal = lib.mkOption {
                      type = lib.types.int;
                      default = 1540;
                    };
                    MysteriousCrystal = lib.mkOption {
                      type = lib.types.int;
                      default = 1676;
                    };
                    Mytryl = lib.mkOption {
                      type = lib.types.int;
                      default = 1656;
                    };
                    Naquadah = lib.mkOption {
                      type = lib.types.int;
                      default = 1574;
                    };
                    NaquadahAlloy = lib.mkOption {
                      type = lib.types.int;
                      default = 1575;
                    };
                    NaquadahEnriched = lib.mkOption {
                      type = lib.types.int;
                      default = 1576;
                    };
                    Naquadria = lib.mkOption {
                      type = lib.types.int;
                      default = 1577;
                    };
                    Neodymium = lib.mkOption {
                      type = lib.types.int;
                      default = 1510;
                    };
                    NeodymiumMagnetic = lib.mkOption {
                      type = lib.types.int;
                      default = 1648;
                    };
                    NetherQuartz = lib.mkOption {
                      type = lib.types.int;
                      default = 1578;
                    };
                    NetherStar = lib.mkOption {
                      type = lib.types.int;
                      default = 1579;
                    };
                    Neutronium = lib.mkOption {
                      type = lib.types.int;
                      default = 1511;
                    };
                    Nichrome = lib.mkOption {
                      type = lib.types.int;
                      default = 1603;
                    };
                    Nickel = lib.mkOption {
                      type = lib.types.int;
                      default = 1512;
                    };
                    NickelZincFerrite = lib.mkOption {
                      type = lib.types.int;
                      default = 1665;
                    };
                    Olenite = lib.mkOption {
                      type = lib.types.int;
                      default = 1696;
                    };
                    Olivine = lib.mkOption {
                      type = lib.types.int;
                      default = 1619;
                    };
                    Opal = lib.mkOption {
                      type = lib.types.int;
                      default = 1620;
                    };
                    Orichalcum = lib.mkOption {
                      type = lib.types.int;
                      default = 1535;
                    };
                    Oriharukon = lib.mkOption {
                      type = lib.types.int;
                      default = 1660;
                    };
                    Orundum = lib.mkOption {
                      type = lib.types.int;
                      default = 1714;
                    };
                    Osmiridium = lib.mkOption {
                      type = lib.types.int;
                      default = 1587;
                    };
                    Osmium = lib.mkOption {
                      type = lib.types.int;
                      default = 1513;
                    };
                    Oureclase = lib.mkOption {
                      type = lib.types.int;
                      default = 1580;
                    };
                    Palladium = lib.mkOption {
                      type = lib.types.int;
                      default = 1514;
                    };
                    Permalloy = lib.mkOption {
                      type = lib.types.int;
                      default = 1539;
                    };
                    PigIron = lib.mkOption {
                      type = lib.types.int;
                      default = 1605;
                    };
                    Plastic = lib.mkOption {
                      type = lib.types.int;
                      default = 1606;
                    };
                    Platinum = lib.mkOption {
                      type = lib.types.int;
                      default = 1515;
                    };
                    Plutonium = lib.mkOption {
                      type = lib.types.int;
                      default = 1516;
                    };
                    Plutonium241 = lib.mkOption {
                      type = lib.types.int;
                      default = 1517;
                    };
                    Polybenzimidazole = lib.mkOption {
                      type = lib.types.int;
                      default = 1670;
                    };
                    Polycaprolactam = lib.mkOption {
                      type = lib.types.int;
                      default = 1609;
                    };
                    PolyphenyleneSulfide = lib.mkOption {
                      type = lib.types.int;
                      default = 1662;
                    };
                    Polystyrene = lib.mkOption {
                      type = lib.types.int;
                      default = 1663;
                    };
                    Polytetrafluoroethylene = lib.mkOption {
                      type = lib.types.int;
                      default = 1610;
                    };
                    PolyvinylChloride = lib.mkOption {
                      type = lib.types.int;
                      default = 1541;
                    };
                    Prasiolite = lib.mkOption {
                      type = lib.types.int;
                      default = 1702;
                    };
                    PreciousMetalsAlloy = lib.mkOption {
                      type = lib.types.int;
                      default = 1732;
                    };
                    Prometheum = lib.mkOption {
                      type = lib.types.int;
                      default = 1581;
                    };
                    PulsatingIron = lib.mkOption {
                      type = lib.types.int;
                      default = 1531;
                    };
                    Quantium = lib.mkOption {
                      type = lib.types.int;
                      default = 1655;
                    };
                    Realgar = lib.mkOption {
                      type = lib.types.int;
                      default = 1645;
                    };
                    RedSteel = lib.mkOption {
                      type = lib.types.int;
                      default = 1632;
                    };
                    RedZircon = lib.mkOption {
                      type = lib.types.int;
                      default = 1697;
                    };
                    RedstoneAlloy = lib.mkOption {
                      type = lib.types.int;
                      default = 1525;
                    };
                    Reinforced = lib.mkOption {
                      type = lib.types.int;
                      default = 1586;
                    };
                    Rhodium = lib.mkOption {
                      type = lib.types.int;
                      default = 1707;
                    };
                    Rhodium-PlatedPalladium = lib.mkOption {
                      type = lib.types.int;
                      default = 1708;
                    };
                    RoseGold = lib.mkOption {
                      type = lib.types.int;
                      default = 1628;
                    };
                    Rubracium = lib.mkOption {
                      type = lib.types.int;
                      default = 1534;
                    };
                    Ruby = lib.mkOption {
                      type = lib.types.int;
                      default = 1524;
                    };
                    Ruridit = lib.mkOption {
                      type = lib.types.int;
                      default = 1710;
                    };
                    Ruthenium = lib.mkOption {
                      type = lib.types.int;
                      default = 1706;
                    };
                    SamariumMagnetic = lib.mkOption {
                      type = lib.types.int;
                      default = 1667;
                    };
                    Sapphire = lib.mkOption {
                      type = lib.types.int;
                      default = 1611;
                    };
                    Shadow = lib.mkOption {
                      type = lib.types.int;
                      default = 1622;
                    };
                    ShadowIron = lib.mkOption {
                      type = lib.types.int;
                      default = 1623;
                    };
                    ShadowSteel = lib.mkOption {
                      type = lib.types.int;
                      default = 1624;
                    };
                    Shirabon = lib.mkOption {
                      type = lib.types.int;
                      default = 1735;
                    };
                    Signalium = lib.mkOption {
                      type = lib.types.int;
                      default = 1725;
                    };
                    Silicone = lib.mkOption {
                      type = lib.types.int;
                      default = 1608;
                    };
                    Silver = lib.mkOption {
                      type = lib.types.int;
                      default = 1518;
                    };
                    Soularium = lib.mkOption {
                      type = lib.types.int;
                      default = 1589;
                    };
                    SpaceTime = lib.mkOption {
                      type = lib.types.int;
                      default = 1674;
                    };
                    StainlessSteel = lib.mkOption {
                      type = lib.types.int;
                      default = 1612;
                    };
                    SteelMagnetic = lib.mkOption {
                      type = lib.types.int;
                      default = 1647;
                    };
                    Steeleaf = lib.mkOption {
                      type = lib.types.int;
                      default = 1625;
                    };
                    StellarAlloy = lib.mkOption {
                      type = lib.types.int;
                      default = 1681;
                    };
                    SterlingSilver = lib.mkOption {
                      type = lib.types.int;
                      default = 1627;
                    };
                    StyreneButadieneRubber = lib.mkOption {
                      type = lib.types.int;
                      default = 1664;
                    };
                    Sunnarium = lib.mkOption {
                      type = lib.types.int;
                      default = 1588;
                    };
                    TPVAlloy = lib.mkOption {
                      type = lib.types.int;
                      default = 1673;
                    };
                    Tairitsu = lib.mkOption {
                      type = lib.types.int;
                      default = 1731;
                    };
                    TanmolyiumBeta-C = lib.mkOption {
                      type = lib.types.int;
                      default = 1728;
                    };
                    TantalumHafniumCarbide = lib.mkOption {
                      type = lib.types.int;
                      default = 1501;
                    };
                    Tanzanite = lib.mkOption {
                      type = lib.types.int;
                      default = 1613;
                    };
                    Terrasteel = lib.mkOption {
                      type = lib.types.int;
                      default = 1741;
                    };
                    Thorium = lib.mkOption {
                      type = lib.types.int;
                      default = 1519;
                    };
                    Thorium232 = lib.mkOption {
                      type = lib.types.int;
                      default = 1701;
                    };
                    Tiberium = lib.mkOption {
                      type = lib.types.int;
                      default = 1709;
                    };
                    TinAlloy = lib.mkOption {
                      type = lib.types.int;
                      default = 1614;
                    };
                    Titanium = lib.mkOption {
                      type = lib.types.int;
                      default = 1520;
                    };
                    Topaz = lib.mkOption {
                      type = lib.types.int;
                      default = 1615;
                    };
                    TranscendentMetal = lib.mkOption {
                      type = lib.types.int;
                      default = 1686;
                    };
                    Trinium = lib.mkOption {
                      type = lib.types.int;
                      default = 1661;
                    };
                    Tritanium = lib.mkOption {
                      type = lib.types.int;
                      default = 1582;
                    };
                    Tungsten = lib.mkOption {
                      type = lib.types.int;
                      default = 1521;
                    };
                    TungstenCarbide = lib.mkOption {
                      type = lib.types.int;
                      default = 1649;
                    };
                    TungstenSteel = lib.mkOption {
                      type = lib.types.int;
                      default = 1529;
                    };
                    Ultimet = lib.mkOption {
                      type = lib.types.int;
                      default = 1616;
                    };
                    Universium = lib.mkOption {
                      type = lib.types.int;
                      default = 1746;
                    };
                    Uranium = lib.mkOption {
                      type = lib.types.int;
                      default = 1522;
                    };
                    Uranium235 = lib.mkOption {
                      type = lib.types.int;
                      default = 1523;
                    };
                    Vanadio-Oxy-Dravite = lib.mkOption {
                      type = lib.types.int;
                      default = 1695;
                    };
                    VanadiumSteel = lib.mkOption {
                      type = lib.types.int;
                      default = 1650;
                    };
                    VibrantAlloy = lib.mkOption {
                      type = lib.types.int;
                      default = 1636;
                    };
                    Vinteum = lib.mkOption {
                      type = lib.types.int;
                      default = 1641;
                    };
                    VividAlloy = lib.mkOption {
                      type = lib.types.int;
                      default = 1684;
                    };
                    Void = lib.mkOption {
                      type = lib.types.int;
                      default = 1583;
                    };
                    Vulcanite = lib.mkOption {
                      type = lib.types.int;
                      default = 1584;
                    };
                    Vyroxeres = lib.mkOption {
                      type = lib.types.int;
                      default = 1585;
                    };
                    WhiteDwarfMatter = lib.mkOption {
                      type = lib.types.int;
                      default = 1744;
                    };
                    WroughtIron = lib.mkOption {
                      type = lib.types.int;
                      default = 1617;
                    };
                    Zircaloy-2 = lib.mkOption {
                      type = lib.types.int;
                      default = 1719;
                    };
                    Zircaloy-4 = lib.mkOption {
                      type = lib.types.int;
                      default = 1718;
                    };
                    Zn-ThAlloy = lib.mkOption {
                      type = lib.types.int;
                      default = 1717;
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
