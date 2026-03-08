{
  description = "Description for the project";

  inputs = {
    flake-parts.url = "github:hercules-ci/flake-parts";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
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
        ...
      }: let
        gtnh-lib = import ./lib.nix {
          inherit pkgs lib;
        };
        versions = inputs.haumea.lib.load {
          src = ./versions;
          inputs = perSystemInputs;
        };
        version-list = import ./version-list.nix;
      in {
        packages =
          builtins.listToAttrs (builtins.map (version: {
              name = "gtnh-${version.version}";
              value = (gtnh-lib.mkVersion version) pkgs;
            })
            version-list)
          // {docs = gtnh-lib.allDocs versions pkgs;};

        overlayAttrs = builtins.listToAttrs (builtins.map (version: {
            name = "gtnh-${version.version}";
            value = config.packages."gtnh-${version.version}";
          })
          version-list);
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
            options.programs.gtnh = versionData // {
              enable = lib.mkEnableOption "GTNH server";
            };
          }) (builtins.readDir ./versions);
      };
    });
}
