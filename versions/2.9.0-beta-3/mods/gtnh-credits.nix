{ lib, ... }:
{
  credits_json = lib.mkOption {
    description = "credits_json configuration (./config/gtnh-credits/credits.json)";
    default = { };
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
          type = lib.types.str;
          default = "./config/gtnh-credits/credits.json";
          readOnly = true;
        };
        kind = lib.mkOption {
          type = lib.types.str;
          default = "json";
          readOnly = true;
        };
        category = lib.mkOption {
          type = lib.types.listOf (
            lib.types.submodule {
              options = {
                class = lib.mkOption {
                  type = lib.types.listOf lib.types.str;
                  default = [
                    "detail"
                    "person"
                    "role"
                  ];
                };
                id = lib.mkOption {
                  type = lib.types.str;
                  default = "project_leadership";
                };
              };
            }
          );
          default = [
            {
              class = [
                "detail"
                "person"
                "role"
              ];
              id = "project_leadership";
            }
            {
              class = [
                "detail"
                "person"
                "role"
              ];
              id = "original_mod_authors";
            }
            {
              class = [
                "detail"
                "person"
                "role"
              ];
              id = "mod_development";
            }
            {
              class = [
                "detail"
                "person"
                "role"
              ];
              id = "pack_development";
            }
            {
              class = [
                "detail"
                "person"
                "role"
              ];
              id = "quests";
            }
            {
              class = [
                "detail"
                "person"
                "role"
              ];
              id = "gt_multiblocks";
            }
            {
              class = [
                "detail"
                "person"
                "role"
              ];
              id = "testing_qa";
            }
            {
              class = [
                "detail"
                "person"
                "role"
              ];
              id = "build_infrastructure";
            }
            {
              class = [
                "detail"
                "person"
                "role"
              ];
              id = "wiki_documentation";
            }
            {
              class = [
                "detail"
                "person"
                "role"
              ];
              id = "localization";
            }
            {
              class = [
                "detail"
                "person"
                "role"
              ];
              id = "art_media";
            }
            {
              class = [
                "detail"
                "person"
                "role"
              ];
              id = "community";
            }
            {
              class = [
                "detail"
                "person"
                "role"
              ];
              id = "donators";
            }
          ];
        };
        person = lib.mkOption {
          type = lib.types.listOf (
            lib.types.submodule {
              options = {
                category = lib.mkOption {
                  default = { };
                  type = lib.types.submodule {
                    options = {
                      build_infrastructure = lib.mkOption {
                        type = lib.types.nullOr lib.types.str;
                        default = null;
                      };
                      donators = lib.mkOption {
                        type = lib.types.nullOr lib.types.str;
                        default = null;
                      };
                      gt_multiblocks = lib.mkOption {
                        type = lib.types.nullOr (lib.types.either lib.types.str (lib.types.listOf lib.types.str));
                        default = null;
                      };
                      original_mod_authors = lib.mkOption {
                        type = lib.types.nullOr (lib.types.either lib.types.str (lib.types.listOf lib.types.str));
                        default = null;
                      };
                      project_leadership = lib.mkOption {
                        type = lib.types.nullOr (lib.types.either lib.types.str (lib.types.listOf lib.types.str));
                        default = null;
                      };
                      quests = lib.mkOption {
                        type = lib.types.nullOr (lib.types.either lib.types.str (lib.types.listOf lib.types.str));
                        default = null;
                      };
                    };
                  };
                  apply =
                    v:
                    if v == null then
                      v
                    else
                      lib.filterAttrs (
                        n: v:
                        v != null
                        || !(builtins.elem n [
                          "build_infrastructure"
                          "donators"
                          "gt_multiblocks"
                          "original_mod_authors"
                          "project_leadership"
                          "quests"
                        ])
                      ) v;
                };
                name = lib.mkOption {
                  type = lib.types.str;
                  default = "§cDreamMaster§f§lXXL";
                };
                username = lib.mkOption {
                  type = lib.types.nullOr lib.types.str;
                  default = null;
                };
              };
            }
          );
          apply = map (lib.filterAttrs (n: v: v != null || !(builtins.elem n [ "username" ])));
          default = [
            {
              category = {
                project_leadership = [
                  "founder"
                  "project_lead"
                ];
                quests = "quest_editor";
              };
              name = "§cDreamMaster§f§lXXL";
              username = "Dream-Master";
            }
            {
              category = {
                project_leadership = "project_coordinator";
              };
              name = "Boubou_19";
            }
            {
              category = {
                quests = "quest_editor";
              };
              name = "Prometheus0000";
            }
            {
              category = {
                quests = "quest_editor";
              };
              name = "richardhendricks";
            }
            {
              category = {
                quests = "quest_editor";
              };
              name = "bombcar";
            }
            {
              category = {
                quests = "quest_editor";
              };
              name = "Baerschen";
            }
            {
              category = {
                quests = "quest_editor";
              };
              name = "miozune";
            }
            {
              category = {
                quests = "quest_editor";
              };
              name = "Giovanni-NL";
            }
            {
              category = {
                quests = "quest_editor";
              };
              name = "D-Cysteine";
            }
            {
              category = {
                quests = "quest_editor";
              };
              name = "Reflex18";
            }
            {
              category = {
                quests = "quest_editor";
              };
              name = "Kiwi233";
            }
            {
              category = {
                quests = "quest_editor";
              };
              name = "FourIsTheNumber";
            }
            {
              category = {
                quests = "quest_editor";
              };
              name = "shpaass";
            }
            {
              category = {
                quests = "quest_editor";
              };
              name = "Technus";
            }
            {
              category = {
                quests = "quest_editor";
              };
              name = "serenibyss";
            }
            {
              category = {
                quests = "quest_editor";
              };
              name = "YannickMG";
            }
            {
              category = {
                quests = "quest_editor";
              };
              name = "HFPTetraUro";
            }
            {
              category = {
                quests = "quest_editor";
              };
              name = "KraVoid";
            }
            {
              category = {
                quests = "quest_editor";
              };
              name = "yukieiji";
            }
            {
              category = {
                quests = "quest_editor";
              };
              name = "Yoshy2002";
            }
            {
              category = {
                quests = "quest_editor";
              };
              name = "Eldrinn-Elantey";
            }
            {
              category = {
                quests = "quest_editor";
              };
              name = "koolkrafter5";
            }
            {
              category = {
                quests = "quest_editor";
              };
              name = "GDCloudstrike";
            }
            {
              category = {
                quests = "quest_editor";
              };
              name = "Elisis";
            }
            {
              category = {
                build_infrastructure = "systems_administrator";
              };
              name = "Namikon";
            }
            {
              category = {
                original_mod_authors = "mod_betterloadingscreen";
              };
              name = "AlexIIL";
            }
            {
              category = {
                original_mod_authors = "mod_ae2";
              };
              name = "AlgorithmX2";
            }
            {
              category = {
                original_mod_authors = "mod_bloodarsenal";
              };
              name = "Arcaratus";
            }
            {
              category = {
                original_mod_authors = [
                  "mod_computronics"
                  "mod_asielib"
                  "mod_foamfix"
                ];
              };
              name = "asiekierka";
            }
            {
              category = {
                original_mod_authors = "mod_villagenames";
              };
              name = "AstroTibs";
            }
            {
              category = {
                original_mod_authors = "mod_infernalmobs";
              };
              name = "AtomicStryker";
            }
            {
              category = {
                original_mod_authors = "mod_baubles";
              };
              name = "Azanor";
            }
            {
              category = {
                original_mod_authors = [
                  "mod_ae2stuff"
                  "mod_bdlib"
                  "mod_gendustry"
                  "mod_neiaddons"
                ];
              };
              name = "bdew";
            }
            {
              category = {
                original_mod_authors = "mod_twilightforest";
              };
              name = "Benimatic";
            }
            {
              category = {
                original_mod_authors = "mod_cookingforblockheads";
              };
              name = "BlayTheNinth";
            }
            {
              category = {
                original_mod_authors = "mod_galaxyspace";
              };
              name = "BlesseNtumble";
            }
            {
              category = {
                original_mod_authors = "mod_witchinggadgets";
              };
              name = "BluSunrize";
            }
            {
              category = {
                original_mod_authors = "mod_tconstruct";
              };
              name = "boni";
            }
            {
              category = {
                original_mod_authors = [
                  "mod_openblocks"
                  "mod_openmodslib"
                ];
              };
              name = "boq";
            }
            {
              category = {
                original_mod_authors = "mod_draconicevolution";
              };
              name = "brandon3055";
            }
            {
              category = {
                original_mod_authors = [
                  "mod_codechickencore"
                  "mod_forgemultipart"
                  "mod_nei"
                  "mod_translocators"
                  "mod_wrcbe"
                ];
              };
              name = "ChickenBones";
            }
            {
              category = {
                original_mod_authors = "mod_hee";
              };
              name = "chylex";
            }
            {
              category = {
                donators = "stone_age";
                original_mod_authors = "mod_botanichorizons";
              };
              name = "Combuster";
            }
            {
              category = {
                original_mod_authors = "mod_railcraft";
              };
              name = "CovertJaguar";
            }
            {
              category = {
                original_mod_authors = "mod_ironchest";
              };
              name = "cpw";
            }
            {
              category = {
                original_mod_authors = [
                  "mod_endercore"
                  "mod_enderio"
                  "mod_enderzoo"
                ];
              };
              name = "CrazyPants";
            }
            {
              category = {
                original_mod_authors = "mod_littletiles";
              };
              name = "CreativeMD";
            }
            {
              category = {
                original_mod_authors = "mod_wawla";
              };
              name = "Darkhax";
            }
            {
              category = {
                original_mod_authors = "mod_adventurebackpack";
              };
              name = "Darkona";
            }
            {
              category = {
                original_mod_authors = [
                  "mod_remoteio"
                  "mod_toomuchloot"
                ];
              };
              name = "dmillerw";
            }
            {
              category = {
                original_mod_authors = "mod_holoinventory";
              };
              name = "Dries007";
            }
            {
              category = {
                original_mod_authors = "mod_betterstorage";
                quests = "quest_editor";
              };
              name = "Ethryan";
            }
            {
              category = {
                original_mod_authors = "mod_backpack";
              };
              name = "Eydamos";
            }
            {
              category = {
                original_mod_authors = [
                  "mod_specialai"
                  "mod_specialmobs"
                ];
              };
              name = "FatherToast";
            }
            {
              category = {
                original_mod_authors = "mod_thaumicexploration";
              };
              name = "Flaxbeard";
            }
            {
              category = {
                original_mod_authors = [
                  "mod_tconstruct"
                  "mod_tinkersmechworks"
                ];
              };
              name = "fuj1n";
            }
            {
              category = {
                original_mod_authors = "mod_betterquesting";
              };
              name = "Funwayguy";
            }
            {
              category = {
                original_mod_authors = "mod_etfuturum";
              };
              name = "ganymedes01";
            }
            {
              category = {
                original_mod_authors = [
                  "mod_architecturecraft"
                  "mod_projectblue"
                  "mod_sgcraft"
                ];
              };
              name = "Greg Ewing";
            }
            {
              category = {
                original_mod_authors = "mod_gregtech";
              };
              name = "Gregorius Techneticies";
            }
            {
              category = {
                original_mod_authors = "mod_roguelikedungeons";
              };
              name = "Greymerk";
            }
            {
              category = {
                original_mod_authors = "mod_beebetteratbees";
              };
              name = "HellFirePvP";
            }
            {
              category = {
                original_mod_authors = [
                  "mod_advancedsystemsmanager"
                  "mod_stevesaddons"
                ];
              };
              name = "hilburn";
            }
            {
              category = {
                original_mod_authors = "mod_storagedrawers";
              };
              name = "jaquadro";
            }
            {
              category = {
                original_mod_authors = [
                  "mod_controlling"
                  "mod_crafttweaker"
                  "mod_modtweaker"
                ];
              };
              name = "jaredlll08";
            }
            {
              category = {
                original_mod_authors = "mod_taintedmagic";
              };
              name = "John Yorke";
            }
            {
              category = {
                original_mod_authors = [
                  "mod_baublesexpanded"
                  "mod_bugtorch"
                ];
              };
              name = "jss2a98aj";
            }
            {
              category = {
                original_mod_authors = "mod_thaumichorizons";
              };
              name = "Kentington";
            }
            {
              category = {
                original_mod_authors = [
                  "mod_floodlights"
                  "mod_openmodularturrets"
                ];
              };
              name = "Keridos";
            }
            {
              category = {
                original_mod_authors = "mod_thaumicexploration";
              };
              name = "KryptonCaptain";
            }
            {
              category = {
                original_mod_authors = "mod_custommainmenu";
              };
              name = "lumien";
            }
            {
              category = {
                original_mod_authors = [
                  "mod_ingameinfoxml"
                  "mod_lunatriuscore"
                  "mod_schematica"
                ];
              };
              name = "Lunatrius";
            }
            {
              category = {
                original_mod_authors = "mod_naturescompass";
              };
              name = "MattCzyr";
            }
            {
              category = {
                original_mod_authors = [
                  "mod_mantle"
                  "mod_natura"
                  "mod_tconstruct"
                  "mod_tinkersmechworks"
                ];
              };
              name = "mDiyo";
            }
            {
              category = {
                original_mod_authors = "mod_galacticraft";
              };
              name = "micdoodle8";
            }
            {
              category = {
                original_mod_authors = [
                  "mod_openblocks"
                  "mod_openmodslib"
                ];
              };
              name = "Mikee";
            }
            {
              category = {
                original_mod_authors = "mod_carpentersblocks";
              };
              name = "Mineshopper";
            }
            {
              category = {
                original_mod_authors = [
                  "mod_forgerelocation"
                  "mod_mrtjpcore"
                  "mod_projectred"
                ];
              };
              name = "MrTJP";
            }
            {
              category = {
                original_mod_authors = "mod_magicbees";
              };
              name = "MysteriousAges";
            }
            {
              category = {
                original_mod_authors = "mod_thaumictinkerer";
              };
              name = "nekosune";
            }
            {
              category = {
                original_mod_authors = "mod_thaumicenergistics";
              };
              name = "Nividica";
            }
            {
              category = {
                original_mod_authors = "mod_malisisdoors";
              };
              name = "Ordinastie";
            }
            {
              category = {
                original_mod_authors = "mod_wirelesscraftingterm";
              };
              name = "p455w0rd";
            }
            {
              category = {
                original_mod_authors = "mod_harvestcraft";
              };
              name = "Pamela Collins";
            }
            {
              category = {
                original_mod_authors = [
                  "mod_tconstruct"
                  "mod_tinkersmechworks"
                ];
              };
              name = "Pillbox";
            }
            {
              category = {
                original_mod_authors = "mod_thaumictinkerer";
              };
              name = "pixlepix";
            }
            {
              category = {
                original_mod_authors = "mod_openmodularturrets";
              };
              name = "Poenjabiesous";
            }
            {
              category = {
                original_mod_authors = "mod_betterbuilderswands";
              };
              name = "Portablejim";
            }
            {
              category = {
                original_mod_authors = "mod_amunra";
              };
              name = "praecipitator";
            }
            {
              category = {
                original_mod_authors = [
                  "mod_opis"
                  "mod_waila"
                ];
              };
              name = "ProfMobius";
            }
            {
              category = {
                original_mod_authors = [
                  "mod_mantle"
                  "mod_natura"
                  "mod_tconstruct"
                ];
              };
              name = "progWML6";
            }
            {
              category = {
                original_mod_authors = "mod_galacticraft";
              };
              name = "radfast";
            }
            {
              category = {
                original_mod_authors = "mod_etfuturum";
              };
              name = "Roadhog360";
            }
            {
              category = {
                original_mod_authors = "mod_opis";
              };
              name = "RoyCurtis";
            }
            {
              category = {
                original_mod_authors = "mod_logisticspipes";
              };
              name = "RS485";
            }
            {
              category = {
                original_mod_authors = "mod_adventurebackpack";
              };
              name = "runescapejon";
            }
            {
              category = {
                original_mod_authors = "mod_opencomputers";
              };
              name = "Sangar";
            }
            {
              category = {
                original_mod_authors = "mod_forgelin";
              };
              name = "shadowfacts";
            }
            {
              category = {
                original_mod_authors = [
                  "mod_nodalmechanics"
                  "mod_warptheory"
                ];
              };
              name = "Shukaro";
            }
            {
              category = {
                original_mod_authors = "mod_forestry";
              };
              name = "SirSengir";
            }
            {
              category = {
                original_mod_authors = "mod_buildcraft";
              };
              name = "SpaceToad";
            }
            {
              category = {
                original_mod_authors = [
                  "mod_avaritia"
                  "mod_forbiddenmagic"
                ];
              };
              name = "SpitefulFox";
            }
            {
              category = {
                original_mod_authors = [
                  "mod_applecore"
                  "mod_spiceoflife"
                  "mod_tictooltips"
                  "mod_wailaharvestability"
                ];
              };
              name = "squeek";
            }
            {
              category = {
                original_mod_authors = [
                  "mod_mantle"
                  "mod_tconstruct"
                  "mod_tinkersmechworks"
                ];
              };
              name = "Sunstrike";
            }
            {
              category = {
                original_mod_authors = "mod_alchemygrate";
              };
              name = "TechnicianLP";
            }
            {
              category = {
                original_mod_authors = "mod_chiseltones";
              };
              name = "TehNut";
            }
            {
              category = {
                original_mod_authors = "mod_catwalks";
              };
              name = "TheCodeWarrior";
            }
            {
              category = {
                original_mod_authors = "mod_warptheory";
              };
              name = "thegreatunclean";
            }
            {
              category = {
                original_mod_authors = "mod_neiintegration";
              };
              name = "Tonius";
            }
            {
              category = {
                original_mod_authors = "mod_wailaplugins";
              };
              name = "tterrag";
            }
            {
              category = {
                original_mod_authors = "mod_automagy";
              };
              name = "Tuhljin";
            }
            {
              category = {
                original_mod_authors = "mod_openmodularturrets";
              };
              name = "UntouchedWagons";
            }
            {
              category = {
                original_mod_authors = "mod_craftguide";
              };
              name = "Uristqwerty";
            }
            {
              category = {
                original_mod_authors = "mod_botania";
              };
              name = "Vazkii";
            }
            {
              category = {
                original_mod_authors = "mod_tinkersgregworks";
              };
              name = "Vexatos";
            }
            {
              category = {
                original_mod_authors = [
                  "mod_stevescarts"
                  "mod_stevesfactorymanager"
                ];
              };
              name = "Vswe";
            }
            {
              category = {
                original_mod_authors = [
                  "mod_avaritiaddons"
                  "mod_universalsingularities"
                  "mod_wanionlib"
                ];
              };
              name = "WanionCane";
            }
            {
              category = {
                original_mod_authors = "mod_betterachievements";
              };
              name = "way2muchnoise";
            }
            {
              category = {
                original_mod_authors = "mod_bloodmagic";
              };
              name = "WayofTime";
            }
            {
              category = {
                original_mod_authors = "mod_universalsingularities";
              };
              name = "Wealthyturtle";
            }
            {
              category = {
                original_mod_authors = "mod_nutrition";
              };
              name = "Wes Cook";
            }
            {
              category = {
                original_mod_authors = [
                  "mod_afsu"
                  "mod_nuclearcontrol"
                ];
              };
              name = "xbony2";
            }
            {
              category = {
                original_mod_authors = "mod_mousetweaks";
              };
              name = "YaLTeR";
            }
            {
              category = {
                original_mod_authors = "mod_climatecontrol";
              };
              name = "Zeno410";
            }
            {
              category = {
                original_mod_authors = "mod_cosmeticarmor";
              };
              name = "zlainsama";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "1e16";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "25FiveDetail";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "3rectefied";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "456Xander";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "4i1";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "8800088";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "__tomm__";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "__Trollface";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "_ANonymousPerson";
            }
            {
              category = {
                donators = "ultimate_voltage";
              };
              name = "_Dislocator_";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "_Faisal_";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "_Hokey";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "_Pandoro";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "_Shadii_";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "_Teixel_";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "_the_";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "_Timbo";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "_zZaney";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Abdiel_Kavash";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "abestone2";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "abouttabs";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "ACanadianGuy";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "AcidEgoist";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "ActuallyMage";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Adamantism";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "adamcirillo";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "adamros";
            }
            {
              category = {
                donators = "stargate";
                quests = "quest_editor";
              };
              name = "AdityaG13";
              username = "AdityaVG13";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Aerosalo";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "agelian";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "AgentAuers";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "AgentLA";
            }
            {
              category = {
                donators = "extreme_voltage";
              };
              name = "Aiseus";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "aka13_404";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "akirapriva";
            }
            {
              category = {
                donators = "steam_age";
              };
              name = "akiraprivaa";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "AkumaNoYoru";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "AlastarDArk";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "alexbegt";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "algent";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "alphaomega21";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Alrightsc";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "AlucardMGrim";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Ambaw";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Anima";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "ankardi";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "anon";
            }
            {
              category = {
                donators = "steam_age";
              };
              name = "Apocal_Hyps";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Arcadia_Blues";
            }
            {
              category = {
                donators = "steam_age";
              };
              name = "Artoooooor";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "AshenChromatic";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "AshLeee";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "ASOOD";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "asturrial";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Asutoro";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "AubDunklefelger";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "AuroraJesse";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Axlegear";
            }
            {
              category = {
                donators = "extreme_voltage";
              };
              name = "Azru";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Azuxul";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "BadAlchemy";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Bamsteh";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Barokko";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Baunti";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Bear989jr";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Bear989Sr";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "BeardBois";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Beardedflea";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "bechill";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "bedrill";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "beneeney";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Berserker66";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "beta_reduction";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "BH5432";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "bi0nicman";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "bigfoot85";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "BigZee";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Billionth00";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Bimgo";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "biochemrs";
            }
            {
              category = {
                donators = "steam_age";
              };
              name = "BiosElement";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "blaasfM";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Bladezz88";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "BlahBlah81";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "BloodyAsp";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "BloodyGulch";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "blueleaf54";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "boredi";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "boubou_19";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "BouwerMan";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "braeven";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Brando";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Breviel";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Briareos1981";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "bright_lego";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "BriteLord";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Brycen121";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "bsaa";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Bubuzela";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "buizerd007";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Buuz135";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "C_A_T_T_";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "CaballoCraft";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "caca_le_chat";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "CaeruleusBlue";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Calcarea";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Caleb__M";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "CallyKoh";
            }
            {
              category = {
                donators = "extreme_voltage";
              };
              name = "CapColt";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Capitaine_30";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Carsso";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "cdaser";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "centmeteenvin";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Cerous";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Cerulean627";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "CetiOmicron";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "chainman564";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Chaos_Filler";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "CharlieTuna8";
            }
            {
              category = {
                donators = "steam_age";
              };
              name = "CharTem";
            }
            {
              category = {
                donators = "ultimate_voltage";
                quests = "quest_editor";
              };
              name = "chochem";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "choucousse";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "CHuDO_LD";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Ciubix8513";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "CLEPTO";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Clta";
            }
            {
              category = {
                donators = "extreme_voltage";
              };
              name = "clzola";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "cmclouser";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "codewarrior";
            }
            {
              category = {
                donators = "extreme_voltage";
              };
              name = "codidu";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Cordo52";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "CowboyCave";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Cozzmolot";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Craftspirit_MC";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "crash117";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "CrazyJ1984";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "crdl_pls";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Crepes_R_Us";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "cristicsk";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Crumpitx";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Crusader2835";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "CrustyDentist";
            }
            {
              category = {
                donators = "steam_age";
              };
              name = "CrymaOfficial";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "cublikefoot";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "cuketka5";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Cumnana";
            }
            {
              category = {
                donators = "steam_age";
              };
              name = "cyypr";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Czolgista123";
            }
            {
              category = {
                donators = "steam_age";
              };
              name = "Daarkenis";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Daddy_Cecil";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Damos1212";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "danirpg";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Darkmaxsas";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "darksabre010";
            }
            {
              category = {
                donators = "steam_age";
              };
              name = "DarkShadow44";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Darkstar1712";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "DarkYuan";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "DarthUmbris";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "davidca1226";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Day0Dreamer";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "DEATHICIDE";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Deathlycraft";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Deathstare";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Dejnol";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "demanzke";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Demosthenex";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Demosthenexx";
            }
            {
              category = {
                donators = "ultimate_voltage";
              };
              name = "Der_Giant";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "DerBoon";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "DerMilchkarton";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "DesCuddlebat";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "devanchya";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "DevElements";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Devilin_Pixy";
            }
            {
              category = {
                donators = "steam_age";
              };
              name = "Diamantino_Op";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "diamondguy2798";
            }
            {
              category = {
                donators = "ultimate_voltage";
              };
              name = "diCardinale";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "DietmarKracht";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Diliskars";
            }
            {
              category = {
                donators = "steam_age";
              };
              name = "djaquay";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Djflippy";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "DNGreenBean";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "DonsOfGaming";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "DooMQuiGonJinn";
            }
            {
              category = {
                donators = "steam_age";
              };
              name = "DoomTag1";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Dorfschwein";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "DoughnutDev";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Dr_Flop";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Dracion";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "draeath";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "DragDen";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Dragendave";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "DragonTriplets";
            }
            {
              category = {
                donators = "steam_age";
              };
              name = "Dreadsoul";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "DreamMasterXXL";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "drippytxy";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "DrRatmouse";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "DrVonBraun";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "DubDubChan";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "dungi";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "dxplosiv3";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "DZCreeper";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "e99999";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "E_StarK";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Eason1134HK";
            }
            {
              category = {
                donators = "ultimate_voltage";
              };
              name = "Echo_Djinn";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "EGERTRONx";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "egsergio";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "ElectroBot";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Elegal";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "EllaWolf2";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "ElNounch";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "EmmyDroid";
            }
            {
              category = {
                donators = "ultimate_voltage";
              };
              name = "Emve";
            }
            {
              category = {
                donators = "extreme_voltage";
              };
              name = "Ender";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "eperdeme";
            }
            {
              category = {
                donators = "steam_age";
              };
              name = "Er4i93";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Erpoll";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "estebes";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Evaleon";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Excruciation";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "F_S_Q";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "fappoh";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "FatherGentlespie";
            }
            {
              category = {
                donators = "steam_age";
              };
              name = "FaultierStein";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "FBIDonut";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "FenixElite";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Ferelwing";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Ferigad";
            }
            {
              category = {
                donators = "extreme_voltage";
              };
              name = "FerretCentral";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "FetherFall";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Fingorn73";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "FirstBigFor";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Flame_Light";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Fobius";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "FOOT_MILK";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "ForTheHorde01";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "foxxx0";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "FR_capal";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "freebug";
            }
            {
              category = {
                donators = "steam_age";
              };
              name = "FreedomFR";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "FriendlyButFire";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Frikkle";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Frisia";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "fry_lad";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Furious_2014";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "FuZionRedX";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "GarretSidzaka";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Gatsugame";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "GeekTechMedia";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "GenSigfriedSkye";
            }
            {
              category = {
                donators = "steam_age";
              };
              name = "Genzo";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Geostyx";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "ghoulsblade";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "glowredman";
            }
            {
              category = {
                donators = "steam_age";
              };
              name = "Glubit";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "GlycemiaDaddy";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Gman_65";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "gmousss";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Gmurowski";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "goreacraft";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Goshen";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Goshen_Ithilien";
            }
            {
              category = {
                donators = "extreme_voltage";
              };
              name = "Gr4c3ful";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "gramalac";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "GrandKaiser";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "GrandProficus";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Grasender_Kevin";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "GreatBrandon";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Greg4581";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Gregifier";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "GregoriusJ";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "GRiggs45";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "grillo126";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Groskoenig_Egert";
            }
            {
              category = {
                donators = "steam_age";
              };
              name = "Grubling";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "GummySenpai";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "gutsy_trev";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Hachuurui";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "HallowCharm977";
            }
            {
              category = {
                donators = "extreme_voltage";
              };
              name = "HallowedGwen";
            }
            {
              category = {
                donators = "extreme_voltage";
              };
              name = "Halo_ItsMe";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Hamster420";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "hanakocz";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "HARDWORK36HOES";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Hartok";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Hegik";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Heph";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "hh_h_h";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Hillgrove";
            }
            {
              category = {
                donators = "steam_age";
              };
              name = "Hinkel";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Hiriko";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "hirrao";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "HistoryNoob";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "hohounk";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "homeofthefox_YT";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Homer";
            }
            {
              category = {
                donators = "ultimate_voltage";
              };
              name = "honzastastny";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Hornum_";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Hotchi";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "houlht";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "hscroot";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "hucking";
            }
            {
              category = {
                donators = "steam_age";
              };
              name = "Hungerya";
            }
            {
              category = {
                donators = "ultimate_voltage";
              };
              name = "Hydrant";
            }
            {
              category = {
                donators = "ultimate_voltage";
              };
              name = "Hyejin";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Hyperic88";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "I_h4te_M0nd4ys";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "ICaxapI";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Ice__Blast";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "ihategravel22";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Ilirith";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Impossible_VT";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "inceee";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "InsaneyHaney";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "invultri";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "IrisMoonglow";
            }
            {
              category = {
                donators = "steam_age";
              };
              name = "iskabot";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "istoleyurballs";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "JackTimes";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "JadedDraconevix";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "jagoly";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "JailBot";
            }
            {
              category = {
                donators = "extreme_voltage";
              };
              name = "JamesArhy";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "japio";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Jebud";
            }
            {
              category = {
                donators = "extreme_voltage";
              };
              name = "JerVenture";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "jeydang";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Jirajha";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "jmarler";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Johnstaal";
            }
            {
              category = {
                donators = "steam_age";
              };
              name = "jonasdk3";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Jordan3688";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "jorstar";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "JosephTX4";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "JTM87";
            }
            {
              category = {
                donators = "extreme_voltage";
              };
              name = "jurrejelle";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Just_Benji";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "JustACasualDay";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "JustATalkingGoat";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "JustBenji";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "JustDenniss";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Justiokas";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Justus0405";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "k0jul";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "K_0ji";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Kadah";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Kahina";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Kane_Hart";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Kankashii";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Kankytwist";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "kanni";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Karlet";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "kastaxoxo";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Kathreen";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Katsuro3";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "kehaan";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "kei_kouma";
            }
            {
              category = {
                donators = "steam_age";
              };
              name = "keleko";
            }
            {
              category = {
                donators = "extreme_voltage";
              };
              name = "kelpshav";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Ketell";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Kevin7798";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "kh2182";
            }
            {
              category = {
                donators = "extreme_voltage";
              };
              name = "KH_Hansano";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "KhonaBetwanhe";
            }
            {
              category = {
                donators = "extreme_voltage";
              };
              name = "kirilwapj";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Kittytob";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "kolatra";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Kozaczek";
            }
            {
              category = {
                donators = "steam_age";
              };
              name = "Krava805";
            }
            {
              category = {
                donators = "extreme_voltage";
              };
              name = "Kremnari";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Kris1432";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "KrotanHill";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "KryolithLP";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "KuchenHead";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Kunanononon";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Kyndist";
            }
            {
              category = {
                donators = "steam_age";
              };
              name = "L4now";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Lagarex";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "lapisguy";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Lardyking";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "laurynasl";
            }
            {
              category = {
                donators = "steam_age";
              };
              name = "leagris";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Lehran";
            }
            {
              category = {
                donators = "extreme_voltage";
              };
              name = "Lelo_Saiyan";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Lepthymo";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "lerendo";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Lethalargy";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Letifery";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Leuca";
            }
            {
              category = {
                donators = "steam_age";
              };
              name = "leumasme";
            }
            {
              category = {
                donators = "steam_age";
              };
              name = "Lewis_Saber";
            }
            {
              category = {
                donators = "steam_age";
              };
              name = "LinoTheHellbat";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "LittleCircles";
            }
            {
              category = {
                donators = "extreme_voltage";
              };
              name = "logiando";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Logos";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Logy1";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Lord_Peverell99";
            }
            {
              category = {
                donators = "extreme_voltage";
              };
              name = "Lord_Vid";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "LordNoyno";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "LordOfLongNez";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "lordshelby";
            }
            {
              category = {
                donators = "extreme_voltage";
              };
              name = "LordTimmeh";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "LucyPoindexter";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "ludovic32";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Luka_Pix";
            }
            {
              category = {
                donators = "extreme_voltage";
              };
              name = "LukaPix";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Lulo004";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "lulutalu";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Luna264";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "LunaticFairy";
            }
            {
              category = {
                donators = "steam_age";
              };
              name = "LuoYangYuLi";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "lushiita";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Luxora";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "LuxusDarkangel";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Lynx1311";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Lynx_Amurie";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Magpie_22";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "MaitreCarl";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Malevolence_";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Mamizoi";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "manf";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "MangAGEM";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "ManuCortex";
            }
            {
              category = {
                donators = "extreme_voltage";
              };
              name = "Marc0Pol0";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "MarconosII";
            }
            {
              category = {
                donators = "extreme_voltage";
              };
              name = "Martebur";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Mastermind1919";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "MatthieuLeDieu";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "MattyGroGy";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Maxana_The_Avali";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "maxi23090000";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "McFlausch";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "McKaw";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Meep310";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Mehrin";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Meishuu";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "melanclock";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "MelonSky14";
            }
            {
              category = {
                donators = "steam_age";
              };
              name = "melvintunnes";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "MeniMeni";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "mgomezch";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "michaelbrady";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "michaels84";
            }
            {
              category = {
                donators = "steam_age";
              };
              name = "microware";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "MimiKe_";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Mine_Sasha";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "minecartdispy";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "MiniKatalyst";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Misha999777";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "MisterGreed";
            }
            {
              category = {
                donators = "steam_age";
              };
              name = "Misterio7x";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Mivhs";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "MomoNasty";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "monopompom";
            }
            {
              category = {
                donators = "extreme_voltage";
              };
              name = "Moogrok";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Moothox";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Mordred";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Morehatz";
            }
            {
              category = {
                donators = "extreme_voltage";
              };
              name = "MorganC46";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Mori_Shinichi";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "MortiferDec";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Mr_Ali_Mac";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "MrDecimus";
            }
            {
              category = {
                donators = "steam_age";
              };
              name = "MrG";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "mrgreenacid";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "MrGundum";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "MrMaleficus";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "MrSalty77";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "MrWisski";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "MsMilkshake";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "MTesseracT";
            }
            {
              category = {
                donators = "steam_age";
              };
              name = "Museigen_";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "MustaMine";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "MyhBalaker";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "MysteryDump";
            }
            {
              category = {
                donators = "extreme_voltage";
              };
              name = "Mythrix08";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Nachie";
            }
            {
              category = {
                donators = "steam_age";
              };
              name = "Nagapito_";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "nagichan_";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Naomuh";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Naquada";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "NaviJust";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Nayloch";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "negersvend";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Nekurobaito";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "nemo075";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Neodark7";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Neonbeta";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "NerverHD";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "NexusNull";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Ngar";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "NH_Hansano";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "nicegril";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Nick5131";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Nicouuuuu";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Nightmanhh";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "NikitaBuker";
            }
            {
              category = {
                donators = "steam_age";
              };
              name = "NikkiTomorrow";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "NoctisCalamitas";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "NoGodComplexes";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Nohicom";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Nori_Silverrage";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Novhex";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "nugget61565";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "nuka_cole";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Nulatari";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Nullav";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Nustafar";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "nwmqpa";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Obeliske";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Ofedia";
            }
            {
              category = {
                donators = "ultimate_voltage";
              };
              name = "ojemine";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "okka676767";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Omeganeth";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Onlyme";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Opaq";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "openblocki";
            }
            {
              category = {
                donators = "ultimate_voltage";
              };
              name = "Orbadon";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "OriTheSpirit";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "oscares91";
            }
            {
              category = {
                donators = "steam_age";
              };
              name = "OTPANNIEXD";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Ourten";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "outlawvv";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "OvermindDL1";
            }
            {
              category = {
                donators = "extreme_voltage";
              };
              name = "P0rtal";
            }
            {
              category = {
                donators = "steam_age";
              };
              name = "Paner";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "panzdenda";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "PaoMSBS";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Peach774";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "phineasor";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "PhoenixSky1";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "PinguinTrooper";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "pitchcherry";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Plem";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Poofphophyllite";
            }
            {
              category = {
                donators = "ultimate_voltage";
              };
              name = "Poppo";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "possi26";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "ppp100";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Predictive_";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "PrinceDeo";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "PrivateDijon";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Probably_Lobster";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "ProperSAMA";
            }
            {
              category = {
                donators = "extreme_voltage";
              };
              name = "ProphecyOak";
            }
            {
              category = {
                donators = "steam_age";
              };
              name = "psehr";
            }
            {
              category = {
                donators = "extreme_voltage";
              };
              name = "PureBluez";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "purplestove";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "pxldi";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "qDshun";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Quantumly";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Quarsy";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "queeek180";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Quintine";
            }
            {
              category = {
                donators = "steam_age";
              };
              name = "Quna";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "r00teniy";
            }
            {
              category = {
                donators = "steam_age";
              };
              name = "Ragnaroin";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "ragnarokjak";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Ralacroix";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Rami_114";
            }
            {
              category = {
                donators = "ultimate_voltage";
              };
              name = "Ranai";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Ray_CZ";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "RaymondLogan";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "rdxxn";
            }
            {
              category = {
                donators = "extreme_voltage";
              };
              name = "realspinelle";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "RedNicStone";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "redspah";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "ReignOfFROZE";
            }
            {
              category = {
                donators = "extreme_voltage";
              };
              name = "rem821";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "renadi";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "repo_alt";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Ressed450";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "resursator";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Rezden";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Rhewn";
            }
            {
              category = {
                donators = "ultimate_voltage";
              };
              name = "Rijodan";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "rilliko";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "RitoRitoRi";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "RocketMaid";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Roffster";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Rubijox";
            }
            {
              category = {
                donators = "steam_age";
              };
              name = "Ruvudkin";
            }
            {
              category = {
                donators = "extreme_voltage";
              };
              name = "s0urdough";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Samalingus";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "samuraiJP";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Sandmaster23";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Saulbuscus";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Schlaibi";
            }
            {
              category = {
                donators = "steam_age";
              };
              name = "Schleimling";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Sconeboy";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Scrome";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "SeaBassLegend";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "sebastiank30";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Seldron";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "SemiG0d";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "seregheru";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "serguzzle";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Shamancs";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "shawnbyday";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Shidima301";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "shiftegan";
            }
            {
              category = {
                donators = "steam_age";
              };
              name = "shining_luna";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Shurtz";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Sibmer";
            }
            {
              category = {
                donators = "steam_age";
              };
              name = "sillycat4725";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Silverdark";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "silverleaf69";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Simon6689";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "simster898";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Sir_Fluffyngton";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Sirheavens";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "sirtuxedo";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "SlavetotheMetal";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "SlouchyLoki";
            }
            {
              category = {
                donators = "steam_age";
              };
              name = "slyd0x";
            }
            {
              category = {
                donators = "ultimate_voltage";
              };
              name = "SMAJLIK73";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Smalnik";
            }
            {
              category = {
                donators = "steam_age";
              };
              name = "SmokyMtnRed";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "SmoothKnees";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Snateraar";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Snowleopoldxxx67";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "sobrinth";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "SoftSir";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "soratidus999";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "SoupTopic";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Sovereignty89";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "SovietWoschi";
            }
            {
              category = {
                donators = "extreme_voltage";
              };
              name = "Sovishe";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Spacebuilder2020";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Spagheetti";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "SPARKPLUGx44";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Spowart";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Spungebubb";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "SpwnX";
            }
            {
              category = {
                donators = "stone_age";
                quests = "quest_editor";
              };
              name = "Srdra";
              username = "srdr2k3";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Stars_27";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "stephen_2015";
            }
            {
              category = {
                donators = "extreme_voltage";
              };
              name = "Stereo528";
            }
            {
              category = {
                donators = "steam_age";
              };
              name = "StevieNicholai";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Stijn_A";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Storyboard";
            }
            {
              category = {
                donators = "extreme_voltage";
              };
              name = "Strat0z";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Stravation";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Struff3llo";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "stupidwalrus";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Stute";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "SuperCoder79";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "SuperficialCake";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Superfrogman98";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Superhond1357";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "superjerk187";
            }
            {
              category = {
                donators = "steam_age";
              };
              name = "SvenVanSnooze";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Swololo";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Syarocchi";
            }
            {
              category = {
                donators = "steam_age";
              };
              name = "syl_boots";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Sylphio";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Szajkop";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "t3hero";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "tandemv";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "TAOMACHINE";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Tee_129";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "TehBanana";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "tern_navi";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Teutonen";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "TexanMD";
            }
            {
              category = {
                donators = "extreme_voltage";
              };
              name = "texaswriter";
            }
            {
              category = {
                donators = "extreme_voltage";
              };
              name = "ThatCheesyTaco";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "The_Hypersonic";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "TheBoboNL";
            }
            {
              category = {
                donators = "extreme_voltage";
              };
              name = "TheKawaiiLeafeon";
            }
            {
              category = {
                donators = "steam_age";
              };
              name = "TheLarinel";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "theletterg";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "TheMaddog91";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "TheOnlyBartman";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "TheSkera";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "TheSugarLump";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "thewaydu";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "TheWorstPHO";
            }
            {
              category = {
                donators = "extreme_voltage";
              };
              name = "Thokert";
            }
            {
              category = {
                donators = "ultimate_voltage";
              };
              name = "thor_ragnason";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "TigersFangs";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Tip_Donaldson";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Tirm";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "TMSAMA";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "toned_o";
            }
            {
              category = {
                donators = "steam_age";
              };
              name = "Torvik_";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "TotegeReplica";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "trilexcom";
            }
            {
              category = {
                donators = "steam_age";
              };
              name = "Trockenbauwand";
            }
            {
              category = {
                donators = "steam_age";
              };
              name = "Trockyz";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Truculent";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Tsiama907";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "TTBeansTT";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "ttiole";
            }
            {
              category = {
                donators = "extreme_voltage";
              };
              name = "tweelix";
            }
            {
              category = {
                donators = "extreme_voltage";
              };
              name = "TwoDCubee";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Tworf";
            }
            {
              category = {
                donators = "steam_age";
              };
              name = "Tymekin";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "tyra_oa";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Ultimabunny4";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Ultimaheart4";
            }
            {
              category = {
                donators = "stargate";
                quests = [
                  "quest_lead"
                  "quest_editor"
                ];
              };
              name = "Ultra_Prodigy";
              username = "UltraProdigy";
            }
            {
              category = {
                donators = "extreme_voltage";
              };
              name = "UltraPeeks";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "ultrasn0wz";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "un_nain_souciant";
            }
            {
              category = {
                donators = "extreme_voltage";
              };
              name = "UNISOCKCORNELIUS";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Urs0";
            }
            {
              category = {
                donators = "ultimate_voltage";
              };
              name = "UwUdwagon";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Valuta";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "vantoura";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "VerdantOzark";
            }
            {
              category = {
                donators = "steam_age";
              };
              name = "Verknaller";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Vernyro";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "vertibirdo";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Vertiv";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "vidplace7";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "viljar290";
            }
            {
              category = {
                donators = "steam_age";
              };
              name = "Villager361";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Villemvk123";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Vingy_";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "vladtheinhaler64";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "VlexStone";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "VMAZZ44";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "volcomrj";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "voooon24";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "VovAksenov";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "WarriorBobRoss";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "WendeWende";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "werduz";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "White_Night_awa";
            }
            {
              category = {
                donators = "ultimate_voltage";
              };
              name = "Willshaper";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "WindowsBunny";
            }
            {
              category = {
                donators = "extreme_voltage";
              };
              name = "wnoa";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "wolfdehulster";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Worive";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Wtz_LASR";
            }
            {
              category = {
                donators = "ultimate_voltage";
              };
              name = "WungTung";
            }
            {
              category = {
                donators = "extreme_voltage";
              };
              name = "Wylnexon";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "xabedo";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "XanderT";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "xane4";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "xauronxx";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "xavier0014";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Xeno_Ra";
            }
            {
              category = {
                donators = "extreme_voltage";
              };
              name = "xGamma_";
            }
            {
              category = {
                donators = "extreme_voltage";
              };
              name = "xkuyax";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "xmainframe";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "xPhilzillax";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "xPrincessEmilyx";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "XxinsanityxX";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Xyic0re";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Yabdat";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Yarntheory";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "YesseYYesseY";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "yinscape";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "YoungOnion";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "yttr1um";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "YuraFarau";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Yurdol";
            }
            {
              category = {
                donators = "steam_age";
              };
              name = "Yutang13";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Z2800667";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "zachary8530";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Zaries";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Zaromas";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "zedle";
            }
            {
              category = {
                donators = "extreme_voltage";
              };
              name = "zeNd3rr";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "zeromega";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "zessirb";
            }
            {
              category = {
                donators = "steam_age";
              };
              name = "ZetsuboNemurase";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Zeus1401";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "zF4ll3nPr3d4t0r";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "ZG4T";
            }
            {
              category = {
                donators = "ultimate_voltage";
              };
              name = "ziiippFLOP";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "zMacj3reake";
            }
            {
              category = {
                donators = "stargate";
              };
              name = "Zouldir";
            }
            {
              category = {
                donators = "stone_age";
              };
              name = "Zyphier";
            }
            {
              category = {
                gt_multiblocks = "thermal_boiler";
              };
              name = "§6ArsinXArscosX";
            }
            {
              category = {
                gt_multiblocks = [
                  "beam_crafter"
                  "beam_mirror"
                  "beam_splitter"
                  "beam_stabilizer"
                  "large_hadron_collider"
                ];
              };
              name = "§6Ham§fCorp";
            }
            {
              category = {
                gt_multiblocks = "beam_stabilizer";
              };
              name = "§5§ozub";
            }
            {
              category = {
                gt_multiblocks = [
                  "exo_foundry"
                  "industrial_cutting_factory"
                ];
              };
              name = "§dAuynonymous";
            }
            {
              category = {
                gt_multiblocks = "industrial_em_separator";
              };
              name = "§6Ba§dps";
            }
            {
              category = {
                gt_multiblocks = "industrial_forming_press";
              };
              name = "§6barnac";
            }
            {
              category = {
                gt_multiblocks = "integrated_ore_factory";
              };
              name = "§6Bavib";
            }
            {
              category = {
                gt_multiblocks = [
                  "nano_forge"
                  "pcb_bio_chamber"
                  "pcb_cooling_tower"
                  "pcb_factory"
                ];
              };
              name = "§9§lBlue§b§lWeabo";
            }
            {
              category = {
                gt_multiblocks = "wormhole_generator";
              };
              name = "§fBucketBrigade";
            }
            {
              category = {
                gt_multiblocks = [
                  "industrial_bending_machine"
                  "industrial_extruder"
                ];
              };
              name = "§6cauchemard";
            }
            {
              category = {
                gt_multiblocks = "steam_macerator";
              };
              name = "§6Citrusss";
            }
            {
              category = {
                gt_multiblocks = [
                  "eye_of_harmony"
                  "plasma_forge"
                  "transcendent_plasma_mixer"
                ];
              };
              name = "§4§l§o§nC§6§l§o§no§a§l§o§nl§3§l§o§ne§5§l§o§nn";
            }
            {
              category = {
                gt_multiblocks = "industrial_centrifuge";
              };
              name = "§6Ducked";
            }
            {
              category = {
                gt_multiblocks = "tree_growth_simulator";
              };
              name = "§6EvgenWarGold";
            }
            {
              category = {
                gt_multiblocks = [
                  "steam_blender"
                  "steam_centrifuge"
                  "steam_forge_hammer"
                  "steam_purifier"
                  "steam_water_pump"
                ];
              };
              name = "§c§lEvgen§9§lWar§6§lGold";
            }
            {
              category = {
                gt_multiblocks = "industrial_molecular_transformer";
              };
              name = "§6Fox";
            }
            {
              category = {
                gt_multiblocks = [
                  "exothermic_hearth"
                  "naquadah_fuel_refinery"
                ];
              };
              name = "GregTech Odyssey";
            }
            {
              category = {
                gt_multiblocks = [
                  "pcb_bio_chamber"
                  "pcb_cooling_tower"
                ];
              };
              name = "§f§lgu§b§lid§3§l118";
            }
            {
              category = {
                gt_multiblocks = [
                  "large_turbine_gas"
                  "large_turbine_hpsteam"
                  "large_turbine_plasma"
                  "large_turbine_scsteam"
                  "large_turbine_steam"
                  "planetary_gas_siphon"
                ];
              };
              name = "§6hugetrust";
            }
            {
              category = {
                gt_multiblocks = "extreme_industrial_greenhouse";
              };
              name = "HydroCN";
            }
            {
              category = {
                gt_multiblocks = [
                  "algae_pond"
                  "industrial_3d_copying_machine"
                ];
              };
              name = "§6IX";
            }
            {
              category = {
                gt_multiblocks = "steam_blender";
              };
              name = "§a§lJL2210";
            }
            {
              category = {
                gt_multiblocks = [
                  "extreme_entity_crusher"
                  "extreme_industrial_greenhouse"
                  "high_temp_gas_cooled_reactor"
                ];
                quests = "quest_editor";
              };
              name = "§4§lk§c§lu§6§lb§e§la§2§l6§a§l0§b§l0§3§l0";
              username = "kuba6000";
            }
            {
              category = {
                gt_multiblocks = [
                  "component_assembly_line"
                  "mega_alloy_blast_smelter"
                ];
              };
              name = "§bMadMan310";
            }
            {
              category = {
                gt_multiblocks = "mega_distillation_tower";
              };
              name = "§6Mallady";
            }
            {
              category = {
                gt_multiblocks = "space_elevator";
              };
              name = "§9§dminecraft7771";
            }
            {
              category = {
                gt_multiblocks = [
                  "extreme_combustion_engine"
                  "large_combustion_engine"
                  "large_naquadah_reactor"
                ];
              };
              name = "§6N7Paddy";
            }
            {
              category = {
                gt_multiblocks = "industrial_coke_oven";
              };
              name = "§6Nicouuuuu";
            }
            {
              category = {
                gt_multiblocks = [
                  "flotation_cell_regulator"
                  "full_board_immersion_device"
                  "spinmatron_2737"
                ];
              };
              name = "§6§lNoc";
            }
            {
              category = {
                gt_multiblocks = [
                  "industrial_packager"
                  "industrial_thermal_centrifuge"
                ];
              };
              name = "§6Oasis_Cactus";
            }
            {
              category = {
                donators = "stargate";
                gt_multiblocks = [
                  "hip_compressor"
                  "industrial_compressor"
                  "neutronium_compressor"
                ];
                quests = "quest_editor";
              };
              name = "§a§lOllie";
              username = "OlliedeLeeuw";
            }
            {
              category = {
                gt_multiblocks = [
                  "fluid_shaper"
                  "mass_solidifier"
                ];
              };
              name = "§9Omda§cCZ";
            }
            {
              category = {
                gt_multiblocks = [
                  "density"
                  "drone_centre"
                ];
              };
              name = "§6omegacubed";
            }
            {
              category = {
                gt_multiblocks = [
                  "industrial_chemical_bath"
                  "industrial_forge_hammer"
                  "large_bronze_boiler"
                  "large_steel_boiler"
                  "large_titanium_boiler"
                  "large_tungstensteel_boiler"
                  "steam_compressor"
                ];
              };
              name = "§6PCGMatt";
            }
            {
              category = {
                gt_multiblocks = "endothermic_fridge";
              };
              name = "Pix3lated";
            }
            {
              category = {
                gt_multiblocks = [
                  "electric_implosion_compressor"
                  "oil_drill_infinite"
                ];
              };
              name = "§6Pix3lated";
            }
            {
              category = {
                gt_multiblocks = "solar_factory";
              };
              name = "§fPure§bB§3l§9u§1ez";
            }
            {
              category = {
                gt_multiblocks = "high_temp_gas_cooled_reactor";
                quests = "quest_editor";
              };
              name = "§1§lPxx500";
              username = "Pxx500";
            }
            {
              category = {
                gt_multiblocks = [
                  "bec_assembler"
                  "bec_diode"
                  "bec_generator"
                  "bec_ionode"
                  "bec_storage"
                  "wormhole_generator"
                ];
              };
              name = "§9Recursive Pineapple";
            }
            {
              category = {
                gt_multiblocks = "cryogenic_freezer";
              };
              name = "§6REDR";
            }
            {
              category = {
                gt_multiblocks = "industrial_mixer";
              };
              name = "§6Shiray";
            }
            {
              category = {
                gt_multiblocks = "drone_centre";
              };
              name = "§bSilverMoon";
            }
            {
              category = {
                gt_multiblocks = "quantum_force_transformer";
                quests = "quest_editor";
              };
              name = "Steelux";
              username = "Steelux8";
            }
            {
              category = {
                gt_multiblocks = "universal_chemical_fuel_engine";
              };
              name = "§6TimTems";
            }
            {
              category = {
                gt_multiblocks = [
                  "industrial_autoclave"
                  "industrial_precision_lathe"
                ];
              };
              name = "§bVolence";
            }
            {
              category = {
                gt_multiblocks = [
                  "boldarnator"
                  "industrial_macerator"
                  "industrial_sifter"
                  "xl_turbine_gas"
                  "xl_turbine_hpsteam"
                  "xl_turbine_plasma"
                  "xl_turbine_scsteam"
                  "xl_turbine_steam"
                  "zhuhai_fishing_port"
                ];
              };
              name = "§6VorTex";
            }
            {
              category = {
                gt_multiblocks = "industrial_electrolyzer";
              };
              name = "§9Vortex";
            }
            {
              category = {
                gt_multiblocks = "ore_washing_plant";
              };
              name = "§6ya9yu";
            }
            {
              category = {
                gt_multiblocks = "pyrolyse_oven";
              };
              name = "§6Ya9yu";
            }
            {
              category = {
                gt_multiblocks = "coke_oven";
              };
              name = "§l§6§bJ§du§fl§di§ba§6";
            }
            {
              category = {
                gt_multiblocks = "deep_earth_heating_pump";
                quests = "quest_editor";
              };
              name = "§abartimaeusnek§7";
              username = "bartimaeusnek";
            }
            {
              category = {
                gt_multiblocks = [
                  "exo_foundry"
                  "optically_optimized_organizer"
                  "spinmatron_2737"
                ];
              };
              name = "§a§lChrom";
            }
            {
              category = {
                gt_multiblocks = [
                  "absolute_baryonic_perfection"
                  "accelerated_bio_coordinator"
                  "clarifier_purification_unit"
                  "extreme_temp_fluctuation_unit"
                  "flocculation_purification_unit"
                  "high_energy_laser_purification"
                  "nanochip_assembly_complex"
                  "nanochip_assembly_matrix"
                  "nanometer_encasement_wrapper"
                  "nanopart_splitter"
                  "nanoprecision_cutting_chamber"
                  "nanoprecision_wire_tracer"
                  "ozonation_purification_unit"
                  "part_preparation_apparatus"
                  "ph_neutralization_unit"
                  "residual_decontaminant_degasser"
                  "superconductive_strand_splitter"
                  "ultra_high_energy_etching_array"
                  "water_purification_plant"
                ];
                quests = "quest_editor";
              };
              name = "§fNot§bAPenguin";
              username = "NotAPenguin0";
            }
            {
              category = {
                gt_multiblocks = "latex";
              };
              name = "§9§lThree";
            }
          ];
        };
        version = lib.mkOption {
          type = lib.types.int;
          default = 2;
        };
      };
    };
  };
  gtnh-credits_cfg = lib.mkOption {
    description = "gtnh-credits_cfg configuration (./config/gtnh-credits/gtnh-credits.cfg)";
    default = { };
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
          type = lib.types.str;
          default = "./config/gtnh-credits/gtnh-credits.cfg";
          readOnly = true;
        };
        kind = lib.mkOption {
          type = lib.types.str;
          default = "forge";
          readOnly = true;
        };
        credits_screen = lib.mkOption {
          default = { };
          type = lib.types.submodule {
            options = {
              fuzzyThreshold = lib.mkOption {
                type = lib.types.str;
                default = "30.0";
                description = "Minimum fuzzy-match score for a person name to appear in fuzzy filter results. Lower is stricter. [range: 0.0 ~ 1000.0, default: 30.0]";
              };
              logo = lib.mkOption {
                type = lib.types.str;
                default = "gtnhcredits:textures/gui/credits/logo.png";
                description = "Resource location of the credits screen logo texture (domain:path). [default: gtnhcredits:textures/gui/credits/logo.png]";
              };
            };
          };
        };
        menu_button = lib.mkOption {
          default = { };
          type = lib.types.submodule {
            options = {
              buttonX = lib.mkOption {
                type = lib.types.int;
                default = -18;
                description = "Button X position. >= 0: relative to left. < 0: relative to right. [range: -10000 ~ 10000, default: -18]";
              };
              buttonY = lib.mkOption {
                type = lib.types.int;
                default = -18;
                description = "Button Y position. >= 0: relative to top < 0: relative to bottom. [range: -10000 ~ 10000, default: -18]";
              };
              enabled = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Show the Credits button in the vanilla main menu. [default: false]";
              };
              icon = lib.mkOption {
                type = lib.types.str;
                default = "";
                description = "Resource location of the button icon texture (domain:path). Leave empty for none. [default: ]";
              };
            };
          };
        };
      };
    };
  };
}
