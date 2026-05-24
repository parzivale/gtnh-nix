{lib, ...}: {
  ae2fc_cfg = lib.mkOption {
    description = "ae2fc_cfg configuration (./config/ae2fc.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ae2fc.cfg";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
      };
      "fluid craft for ae2" = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "Blacklist Essentia Gas" = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Blacklist Essentia Gas from Thaumic Energistics, so they won't be stored in Fluid Storage Cells. [default: true]";
          };
          "Disable all recipes" = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Disable all recipes, for quick tweaker. [default: false]";
          };
          "Enable AE2FC's Fluid I/O Bus" = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Enable this to add Fluid Import/Export Bus like EC2's one. [default: true]";
          };
          "Enable Fluid Storage Cell" = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Enable this to generate the fluid storage cells. If you are playing with EC2, you can turn it off. [default: true]";
          };
          "No Fluid Packet" = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "Enable this to make normal ME Interface can emit fluid with fluid pattern, like the ME Dual Interface. [default: false]";
          };
          };
        };
      };
      };
    };
  };
}
