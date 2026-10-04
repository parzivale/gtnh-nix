{ lib, ... }:
{
  DreamCoreMod_properties = lib.mkOption {
    description = "DreamCoreMod_properties configuration (./config/DreamCoreMod.properties)";
    default = { };
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
          type = lib.types.str;
          default = "./config/DreamCoreMod.properties";
          readOnly = true;
        };
        kind = lib.mkOption {
          type = lib.types.str;
          default = "properties";
          readOnly = true;
        };
        displayedModpackVersion = lib.mkOption {
          type = lib.types.str;
          default = "2.9.0-RC-1";
        };
        downloadOnlyOnce = lib.mkOption {
          type = lib.types.bool;
          default = true;
          description = "Config file for the ASM part of GTNHCoreMod
Tue Jul 28 12:17:03 CEST 2026";
        };
        patchItemFocusWarding = lib.mkOption {
          type = lib.types.bool;
          default = true;
        };
        showConfirmExitWindow = lib.mkOption {
          type = lib.types.bool;
          default = false;
        };
      };
    };
  };
}
