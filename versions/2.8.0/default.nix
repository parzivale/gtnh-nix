{
  lib,
  pkgs,
  haumea,
  ...
}: {
  options.programs.gtnh = lib.mkOption {
    type = lib.types.submodule (subArgs: {
      options =
        haumea.lib.load {
          src = ./options;
          inputs = {
            inherit lib pkgs;
            config = subArgs.config;
          };
        }
        // {
          enable = lib.mkEnableOption "Enable the GTNH server";
        };
    });
  };
}
