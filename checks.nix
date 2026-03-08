{self, ...}: {
  perSystem = {
    config,
    pkgs,
    lib,
    ...
  }: let
    inherit (import ./lib.nix {inherit lib pkgs;}) mkConfigFile;

    versions = builtins.attrNames (builtins.readDir ./versions);

    # Build a derivation that passes iff the rendered config file
    # semantically matches the corresponding file in the pack.
    mkCfgCheck = version: name: cfgValue:
      let
        rendered = mkConfigFile cfgValue;
        original = "${config.packages."gtnh-${version}"}/${cfgValue.path}";
      in
        pkgs.runCommand "check-cfg-${version}-${name}" {
          nativeBuildInputs = [pkgs.python3];
        } ''
          python3 ${./normalize.py} "${original}" "${rendered}"
          touch $out
        '';

    # Generate checks for a single version
    mkVersionChecks = version: let
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
                default = {};
              };
              networking.firewall.allowedUDPPorts = lib.mkOption {
                type = lib.types.listOf lib.types.port;
                default = {};
              };
            };
          })
          {
            _module.args.pkgs = pkgs;
            _module.check = false;
          }
          self.nixosModules.${version}
          {
            programs.gtnh.enable = true;
          }
        ];
      };
    in
      lib.listToAttrs (lib.flatten (lib.mapAttrsToList (modGroup: cfgs:
        lib.mapAttrsToList (cfgName: cfgValue: {
          name = "${version}-${modGroup}-${cfgName}-cfg";
          value = mkCfgCheck version "${modGroup}-${cfgName}-cfg" cfgValue;
        }) cfgs
      ) moduleEval.config.programs.gtnh.mods));

    # Generate checks for all versions
    allChecks = lib.foldl' (acc: version: acc // mkVersionChecks version) {} versions;
  in {
    checks = allChecks;
  };
}
