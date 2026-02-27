{lib, ...}: {
  thaumicenergistics = lib.mkOption {
    description = "thaumicenergistics configuration (./config/thaumicenergistics.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/thaumicenergistics.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        client = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Disable Gearbox Model" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "The iron and thaumium gearboxes will be rendered as a standard block. [default: false]";
              };
            };
          };
        };
        crafting = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Allow Crafting Wireless Essentia Terminal" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Controls if the Wireless Essentia Terminal can be crafted. [default: true]";
              };
              "Arcane Assembler" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Controls if the Arcane Assembler can be crafted. [default: true]";
              };
              "Arcane Crafting Terminal" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Controls if the Arcane Crafting Terminal can be crafted. [default: true]";
              };
              "Certus Quartz Duplication" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Controls if Certus Quartz can be duplicated in the crucible. [default: true]";
              };
              "Distillation Pattern Encoder." = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Controls if the Distillation Pattern Encoder can be crafted. [default: true]";
              };
              "Essentia Cells" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Controls if Essentia Cells and Components can be crafted. [default: true]";
              };
              "Essentia Provider" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Controls if the Essentia Provider can be crafted. [default: true]";
              };
              "Essentia Vibration Chamber" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Controlls if the Essentia Vibration Chamber can be crafted. [default: true]";
              };
              "Force TC Facades" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "When enabled, overwrites the AE2 facade settings for some Thaumcraft blocks, allowing their facades to be crafted. [default: true]";
              };
              "Golem Wifi Backpack" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Controls if the Golem Wifi Backpack can be crafted. [default: true]";
              };
              "IO Buses" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Controls if the import and export buses can be crafted. [default: true]";
              };
              "Infusion Provider" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Controls if the Infusion Provider can be crafted. [default: true]";
              };
              "Vis Relay Interface" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Controls if the Vis Relay Interface can be crafted. [default: true]";
              };
              "Wrench Focus" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Controls if the Wrench Focus is enabled and craftable. [default: true]";
              };
            };
          };
        };
        general = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Essentia Fluid Ratio Exponent" = lib.mkOption {
                type = lib.types.int;
                default = 7;
                description = "Controls the conversion ratio of essentia/fluid. 1 essentia is converted to (2^this) milibuckets of fluid. Please be aware that this value effects how much fluid is transferred through the AE system, which also effects transfer speed and power consumption. Values above 11 make it impossible to use fluid transfer devices such as the ME IO Port, or anything from EC2. [range: 1 ~ 11, default: 7]";
              };
            };
          };
        };
        integration = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "ExtraCells Blacklist" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Prevents extra cells from interacting with essentia gas [default: true]";
              };
            };
          };
        };
      };
    };
  };
}
