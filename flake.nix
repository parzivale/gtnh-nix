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

  outputs = inputs @ {flake-parts, ...}: let
    version-list = import ./version-list.nix;
    lib = import ./lib.nix {
      lib = inputs.nixpkgs.lib;
      pkgs = inputs.nixpkgs.pkgs;
    };
  in
    flake-parts.lib.mkFlake {inherit inputs;} ({self, ...}: {
      imports = [
        inputs.flake-parts.flakeModules.easyOverlay
        ./checks.nix
        ./nixos-test.nix
      ];
      systems = ["x86_64-linux" "aarch64-linux" "aarch64-darwin" "x86_64-darwin"];
      perSystem = {
        config,
        pkgs,
        ...
      }: {
        packages = builtins.listToAttrs (builtins.map (version: {
            name = "gtnh-${version.version}";
            value = lib.mkVersion version;
          })
          version-list);
        # Per-version doc packages
        # // lib.foldl' (
        #   acc: version:
        #     acc
        #     // lib.mapAttrs' (modName: doc: lib.nameValuePair "docs-${version}-${modName}" doc) versionDocs.${version}.mods
        #     // lib.mapAttrs' (optionName: doc: lib.nameValuePair "docs-${version}-${optionName}" doc) versionDocs.${version}.minecraft
        # ) {}
        # versionsWithOptions
        # // {docs = allDocs;};

        overlayAttrs = builtins.listToAttrs (builtins.map (version: {
            name = "gtnh-${version.version}";
            value = config.packages."gtnh-${version.version}";
          })
          version-list);
      };
      flake = {
        nixosModules.gtnh = inputs.haumea.lib.load {
          src = ./versions;
          inherit inputs;
        };
      };
    });
}
