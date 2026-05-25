{lib, ...}: {
  gtneioreplugin_cfg = lib.mkOption {
    description = "gtneioreplugin_cfg configuration (./config/gtneioreplugin.cfg)";
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
      all = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          CSV_name = lib.mkOption {
            type = lib.types.str;
            default = "C:\\Users\\dream\\AppData\\Roaming\\.technic\\modpacks\\mcnewhorizons\\config/GTNH-Oresheet.csv";
            description = "rename the oresheet here, it will appear in /config [default: C:\\spiele\\minecraft\\Technic Launcher\\modpacks\\mcnewhorizons\\config/GTNH-Oresheet.csv]";
          };
          "print csv" = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "princsv, you need apache commons collections to be injected in the minecraft jar. [default: false]";
          };
          };
        };
      };
      };
    };
  };
}
