{self, ...}: {
  perSystem = {
    config,
    pkgs,
    lib,
    ...
  }: let
    inherit (import ./lib.nix {inherit lib pkgs;}) mkConfigFile;

    # Evaluate the gtnh NixOS module with all defaults so we can extract
    # config values for comparison checks.
    moduleEval = lib.evalModules {
      modules = [
        # Stub NixOS options that the gtnh module sets
        ({lib, ...}: {
          options = {
            systemd.services = lib.mkOption {
              type = lib.types.attrs;
              default = {};
            };
            users.users = lib.mkOption {
              type = lib.types.attrs;
              default = {};
            };
            users.groups = lib.mkOption {
              type = lib.types.attrs;
              default = {};
            };
            networking.firewall.allowedTCPPorts = lib.mkOption {
              type = lib.types.listOf lib.types.port;
              default = [];
            };
            networking.firewall.allowedUDPPorts = lib.mkOption {
              type = lib.types.listOf lib.types.port;
              default = [];
            };
          };
        })
        {
          _module.args.pkgs = pkgs;
          _module.check = false;
        }
        self.nixosModules."2.8.4"
        {
          programs.gtnh.enable = true;
        }
      ];
    };

    # Build a derivation that passes iff the rendered config file
    # semantically matches the corresponding file in the 2.8.4 pack.
    mkCfgCheck = name: cfgValue: let
      rendered = mkConfigFile cfgValue;
      original = "${config.packages."gtnh-2.8.4"}/${cfgValue.path}";
    in
      pkgs.runCommand "check-cfg-${name}" {
        nativeBuildInputs = [pkgs.python3];
      } ''
        python3 ${./normalize.py} "${original}" "${rendered}"
        touch $out
      '';

    # Generate checks from all mod configs
    modChecks = lib.listToAttrs (lib.flatten (lib.mapAttrsToList (modGroup: cfgs:
      lib.mapAttrsToList (cfgName: cfgValue: {
        name = "${modGroup}-${cfgName}-cfg";
        value = mkCfgCheck "${modGroup}-${cfgName}-cfg" cfgValue;
      }) cfgs
    ) moduleEval.config.programs.gtnh.mods));
  in {
    checks = modChecks;
  };
}
