{lib, ...}: {
  ForgeRelocation = lib.mkOption {
    description = "ForgeRelocation configuration (./config/ForgeRelocation.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/ForgeRelocation.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        General = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              moveLimit = lib.mkOption {
                type = lib.types.int;
                default = 2048;
              };
            };
          };
        };
        "Tile Movers" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "mover registry" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ "default -> saveload" "mod:minecraft -> coordpush" "mod:Relocation -> coordpush" "mod:ComputerCraft -> coordpush" "mod:EnderStorage -> coordpush" "mod:ChickenChunks -> coordpush" "mod:Translocator -> coordpush" "mod:ProjRed|Compatibility -> coordpush" "mod:ProjRed|Core -> coordpush" "mod:ProjRed|Expansion -> coordpush" "mod:ProjRed|Exploration -> coordpush" "mod:ProjRed|Fabrication -> coordpush" "mod:ProjRed|Illumination -> coordpush" "mod:ProjRed|Integration -> coordpush" "mod:ProjRed|Transmission -> coordpush" "mod:ProjRed|Transportation -> coordpush" "mod:ForgeMultipart -> FMP" ];
              };
            };
          };
        };
      };
    };
  };
}
