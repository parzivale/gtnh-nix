{lib, ...}: {
  gtneioreplugin = lib.mkOption {
    description = "gtneioreplugin configuration (./config/gtneioreplugin.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/gtneioreplugin.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        general = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              CSVName = lib.mkOption {
                type = lib.types.str;
                default = "GTNH-Oresheet.csv";
                description = "the name of the file you want for the ore sheet, it'll appear at the root of your instance. [default: GTNH-Oresheet.csv]";
              };
              CSVnameSmall = lib.mkOption {
                type = lib.types.str;
                default = "GTNH-Small-Ores-Sheet.csv";
                description = "the name of the file you want for the small ore sheet, it'll appear at the root of your instance. [default: GTNH-Small-Ores-Sheet.csv]";
              };
              maxTooltipLines = lib.mkOption {
                type = lib.types.int;
                default = 11;
                description = "Maximum number of lines the dimension names tooltip can have before it wraps around. [range: -2147483648 ~ 2147483647, default: 11]";
              };
              printCsv = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "if true, generate both csv files. [default: false]";
              };
            };
          };
        };
      };
    };
  };
}
