{lib, ...}: {
  client_config = lib.mkOption {
    description = "client_config configuration (./config/gendustry/client.config)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/gendustry/client.config";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
      };
      display = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          PowerShowUnits = lib.mkOption {
            type = lib.types.str;
            default = "EU";
            description = "Units to use when displaying power. Valid values: MJ, EU, RF";
          };
          };
        };
      };
      nei = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "Add Extractor Recipes" = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          "Add Imprinter Recipes" = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          "Add Liquifier Recipes" = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          "Add Mutagen Producer Recipes" = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          "Add Mutatron Recipes" = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          "Add Replicator Recipes" = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          "Add Sampler Recipes" = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          "Add Samples to Search" = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          "Add Transposer Recipes" = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          };
        };
      };
      rendering = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "Bee Effects Frequency" = lib.mkOption {
            type = lib.types.int;
            default = 2;
            description = "Higher = less particles";
          };
          "Render Bee Effects" = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          };
        };
      };
      };
    };
  };
}
