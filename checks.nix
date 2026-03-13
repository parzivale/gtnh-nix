{self, ...}: {
  perSystem = {
    config,
    pkgs,
    lib,
    gtnh-venv,
    gtnh-scripts,
    ...
  }: let
    inherit (import ./lib.nix {inherit lib pkgs;}) mkConfigFile;

    allVersions = builtins.attrNames (builtins.readDir ./versions);
    # Only include versions that have mods (filter out incomplete beta/RC versions)
    versions = builtins.filter (v:
      builtins.pathExists (./versions + "/${v}/mods") &&
      builtins.length (builtins.attrNames (builtins.readDir (./versions + "/${v}/mods"))) > 0
    ) allVersions;

    # Build a derivation that passes iff the rendered config file
    # semantically matches the corresponding file in the pack.
    mkCfgCheck = version: name: cfgValue:
      let
        rendered = mkConfigFile cfgValue;
        original = "${config.packages."gtnh-${version}"}/${cfgValue.path}";
      in
        pkgs.runCommand "check-cfg-${version}-${name}" {
          nativeBuildInputs = [gtnh-venv];
        } ''
          python3 ${gtnh-scripts}/normalize.py "${original}" "${rendered}"
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

    # Aggregate check for a single version
    mkVersionAggregate = version:
      let checks = mkVersionChecks version;
      in pkgs.runCommand "check-${version}" {} ''
        ${lib.concatMapStringsSep "\n" (c: "echo ${c}") (lib.attrValues checks)}
        touch $out
      '';

    # Per-version aggregate checks (lazy - only evaluates when accessed)
    versionAggregates = lib.genAttrs versions mkVersionAggregate;

  in {
    # Only expose per-version aggregate checks to avoid evaluating all versions at once
    checks = versionAggregates;
  };
}
