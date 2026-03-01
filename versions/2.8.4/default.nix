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
            # Don't pass config here - it causes recursion in option defaults
          };
        }
        // {
          enable = lib.mkEnableOption "Enable the GTNH server";
        };
      # Set config-dependent defaults here where lazy evaluation works
      config = {
        minecraft."instance-options".gtnhPackage = lib.mkDefault pkgs."gtnh-${subArgs.config.minecraft."instance-options".version}";
        minecraft."instance-options".jvmOptString = lib.mkDefault (
          let
            icfg = subArgs.config.minecraft."instance-options";
            mkJvmMxFlag = lib.optionalString (icfg.jvmMaxAllocation != "") "-Xmx${icfg.jvmMaxAllocation}";
            mkJvmMsFlag = lib.optionalString (icfg.jvmInitialAllocation != "") "-Xms${icfg.jvmInitialAllocation}";
          in "${mkJvmMxFlag} ${mkJvmMsFlag} ${icfg.jvmOpts}"
        );
      };
    });
  };
}
