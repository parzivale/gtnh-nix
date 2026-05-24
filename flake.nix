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

  outputs = inputs @ {flake-parts, ...}:
    flake-parts.lib.mkFlake {inherit inputs;} ({self, ...}: {
      imports = [
        inputs.flake-parts.flakeModules.easyOverlay
        ./checks.nix
        ./nixos-test.nix
      ];
      systems = ["x86_64-linux" "aarch64-linux" "aarch64-darwin" "x86_64-darwin"];
      perSystem = perSystemInputs @ {
        config,
        pkgs,
        lib,
        system,
        ...
      }: let
        rustToolchain = pkgs.rust-bin.fromRustupToolchainFile ./rust-toolchain.toml;
        craneLib = (inputs.crane.mkLib pkgs).overrideToolchain rustToolchain;
        gtnh-lib = import ./lib.nix {
          inherit pkgs lib;
        };
        versions = inputs.haumea.lib.load {
          src = ./versions;
          inputs = perSystemInputs;
        };
        version-list = import ./version-list.nix;

        gtnh-tool = craneLib.buildPackage {
          src = craneLib.cleanCargoSource ./.;
          strictDeps = true;
          doCheck = false;
        };
      in {
        _module.args.pkgs = import inputs.nixpkgs {
          inherit system;
          overlays = [inputs.rust-overlay.overlays.default];
        };
        _module.args.gtnh-tool = gtnh-tool;

        packages =
          builtins.listToAttrs (builtins.map (version: {
              name = "gtnh-${version.version}";
              value = (gtnh-lib.mkVersion version) pkgs;
            })
            version-list)
          // {
            docs = gtnh-lib.allDocs versions pkgs;
            gtnh-tool = gtnh-tool;
          };

        overlayAttrs = builtins.listToAttrs (builtins.map (version: {
            name = "gtnh-${version.version}";
            value = config.packages."gtnh-${version.version}";
          })
          version-list);

        devShells.default = pkgs.mkShell {
          packages = [
            rustToolchain
            pkgs.rust-analyzer
            pkgs.cargo-llvm-cov
          ];
          shellHook = "nu";
        };
      };
      flake = {
        nixosModules = builtins.mapAttrs (name: _: {
          config,
          pkgs,
          lib,
          ...
        }: let
          versionData = inputs.haumea.lib.load {
            src = ./versions + "/${name}";
            inputs = {
              inherit lib pkgs;
              config = config.programs.gtnh;
            };
          };
        in {
          imports = [./service.nix];
          options.programs.gtnh =
            versionData
            // {
              enable = lib.mkEnableOption "GTNH server";
            };
        }) (builtins.readDir ./versions);
      };
    });
}
