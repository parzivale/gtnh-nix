{
  description = "GTNH Nix configuration and server module";

  inputs = {
    flake-parts.url = "github:hercules-ci/flake-parts";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    crane.url = "github:ipetkov/crane";
    rust-overlay = {
      url = "github:oxalica/rust-overlay";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    haumea = {
      url = "github:nix-community/haumea/v0.2.2";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    inputs@{ flake-parts, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } (
      { self, ... }:
      {
        imports = [
          inputs.flake-parts.flakeModules.easyOverlay
          ./checks.nix
          ./nixos-test.nix
        ];
        systems = [
          "x86_64-linux"
          "aarch64-linux"
          "aarch64-darwin"
          "x86_64-darwin"
        ];
        perSystem =
          perSystemInputs@{
            config,
            pkgs,
            lib,
            system,
            ...
          }:
          let
            rustToolchain = pkgs.rust-bin.fromRustupToolchainFile ./rust-toolchain.toml;
            craneLib = (inputs.crane.mkLib pkgs).overrideToolchain rustToolchain;
            gtnh-lib = import ./lib.nix {
              inherit pkgs lib;
            };
            # Per-version data assembled for `allDocs`: mods come from haumea,
            # minecraft options come from the shared `modules/` (parametrised
            # by `versions/<v>/launcher.nix`). `config = {}` is a docs-time stub
            # — only options with `defaultText` reference `config`, so doc
            # rendering never touches it.
            versionNames = builtins.attrNames (builtins.readDir ./versions);
            loadVersion = name: {
              mods = inputs.haumea.lib.load {
                src = ./versions + "/${name}/mods";
                inputs = { inherit lib pkgs; };
              };
              minecraft = {
                "instance-options" = import ./modules/instance-options.nix {
                  inherit lib pkgs;
                  config = { };
                  launcher = import (./versions + "/${name}/launcher.nix");
                  version = name;
                };
                "server-properties" = import ./modules/server-properties.nix {
                  inherit lib;
                  config = { };
                };
              };
            };
            versions = lib.genAttrs versionNames loadVersion;
            version-list = import ./version-list.nix;

            gtnh-tool = craneLib.buildPackage {
              src = craneLib.cleanCargoSource ./.;
              strictDeps = true;
              doCheck = false;
            };
          in
          {
            _module.args.pkgs = import inputs.nixpkgs {
              inherit system;
              overlays = [ inputs.rust-overlay.overlays.default ];
            };
            _module.args.gtnh-tool = gtnh-tool;

            packages =
              builtins.listToAttrs (
                builtins.map (version: {
                  name = "gtnh-${version.version}";
                  value = (gtnh-lib.mkVersion version) pkgs;
                }) version-list
              )
              // {
                docs = gtnh-lib.allDocs versions pkgs;
                gtnh-tool = gtnh-tool;
              };

            overlayAttrs = builtins.listToAttrs (
              builtins.map (version: {
                name = "gtnh-${version.version}";
                value = config.packages."gtnh-${version.version}";
              }) version-list
            );

            devShells.default = pkgs.mkShell {
              packages = [
                rustToolchain
                pkgs.rust-analyzer
                pkgs.cargo-llvm-cov
              ];
            };

            formatter = pkgs.nixfmt-tree;
          };
        flake = {
          nixosModules = builtins.mapAttrs (
            name: _:
            {
              config,
              pkgs,
              lib,
              ...
            }:
            let
              launcher = import (./versions + "/${name}/launcher.nix");
              mods = inputs.haumea.lib.load {
                src = ./versions + "/${name}/mods";
                inputs = {
                  inherit lib pkgs;
                  config = config.programs.gtnh;
                };
              };
              instance-options = import ./modules/instance-options.nix {
                inherit lib pkgs launcher;
                config = config.programs.gtnh;
                version = name;
              };
              server-properties = import ./modules/server-properties.nix {
                inherit lib;
                config = config.programs.gtnh;
              };
            in
            {
              imports = [ ./service.nix ];
              options.programs.gtnh = {
                enable = lib.mkEnableOption "GTNH server";
                inherit mods;
                minecraft = {
                  "instance-options" = instance-options;
                  "server-properties" = server-properties;
                };
              };
            }
          ) (builtins.readDir ./versions);
        };
      }
    );
}
