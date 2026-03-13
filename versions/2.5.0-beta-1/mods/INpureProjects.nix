{lib, ...}: {
  INpureCore_INpureCore_cfg = lib.mkOption {
    description = "INpureCore_INpureCore_cfg configuration (./config/INpureProjects/INpureCore/INpureCore.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/INpureProjects/INpureCore/INpureCore.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        scripting = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              extract_scripts = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Only extracts if the custom_nei_filters folder does not exist.";
              };
            };
          };
        };
        submodule = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              silence_submodule_logging = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Silences some debug output during load. Harmless.";
              };
            };
          };
        };
        tweaks = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Shut_Up_Missing_Texture_Spam = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "MISSING TEXTURE BLAH/THISPATHISNONSENSE/SHUTUPMINECRAFT. Be gone!";
              };
              complain_about_bad_names = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Post one message per mod in the log if that mod is registering bad GameRegistry names.";
              };
              dump_registry_to_debug_log = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Useful for making custom scripts.";
              };
            };
          };
        };
        updater = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              check = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
            };
          };
        };
      };
    };
  };
  custom_nei_filters_custom_nei_filters_cfg = lib.mkOption {
    description = "custom_nei_filters_custom_nei_filters_cfg configuration (./config/INpureProjects/custom_nei_filters/custom_nei_filters.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/INpureProjects/custom_nei_filters/custom_nei_filters.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        scripting = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              AE2_enabled = lib.mkOption {
                type = lib.types.str;
                default = "true";
              };
              Bibliocraft_enabled = lib.mkOption {
                type = lib.types.str;
                default = "true";
              };
              BuildCraft_enabled = lib.mkOption {
                type = lib.types.str;
                default = "true";
              };
              ExtraUtilities_enabled = lib.mkOption {
                type = lib.types.str;
                default = "true";
              };
              ForgeMicroblock_enabled = lib.mkOption {
                type = lib.types.str;
                default = "true";
              };
              Genetics_enabled = lib.mkOption {
                type = lib.types.str;
                default = "true";
              };
              GraviSuite_enabled = lib.mkOption {
                type = lib.types.str;
                default = "true";
              };
              MFR_enabled = lib.mkOption {
                type = lib.types.str;
                default = "true";
              };
              Mekanism_enabled = lib.mkOption {
                type = lib.types.str;
                default = "true";
              };
              Tcon_enabled = lib.mkOption {
                type = lib.types.str;
                default = "true";
              };
              ThermalExpansion_enabled = lib.mkOption {
                type = lib.types.str;
                default = "true";
              };
              WitchingGadgets_enabled = lib.mkOption {
                type = lib.types.str;
                default = "true";
              };
              tectech_enabled = lib.mkOption {
                type = lib.types.str;
                default = "true";
              };
              tinkersdefense_enabled = lib.mkOption {
                type = lib.types.str;
                default = "true";
              };
              vanilla_enabled = lib.mkOption {
                type = lib.types.str;
                default = "true";
              };
            };
          };
        };
      };
    };
  };
}
