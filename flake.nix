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
    pyproject-nix = {
      url = "github:pyproject-nix/pyproject.nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    uv2nix = {
      url = "github:pyproject-nix/uv2nix";
      inputs.pyproject-nix.follows = "pyproject-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    pyproject-build-systems = {
      url = "github:pyproject-nix/build-system-pkgs";
      inputs.pyproject-nix.follows = "pyproject-nix";
      inputs.uv2nix.follows = "uv2nix";
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

        # Python environment for tools
        workspace = inputs.uv2nix.lib.workspace.loadWorkspace {workspaceRoot = ./.;};
        overlay = workspace.mkPyprojectOverlay {
          sourcePreference = "wheel";
        };
        python = pkgs.python312;
        pythonSet =
          (pkgs.callPackage inputs.pyproject-nix.build.packages {
            inherit python;
          })
          .overrideScope
          (lib.composeManyExtensions [
            inputs.pyproject-build-systems.overlays.default
            overlay
          ]);
        venv = pythonSet.mkVirtualEnv "gtnh-tools" workspace.deps.default;
      in {
        _module.args.pkgs = import inputs.nixpkgs {
          inherit system;
          overlays = [inputs.rust-overlay.overlays.default];
        };
        _module.args.gtnh-venv = venv;
        _module.args.gtnh-scripts = ./scripts;

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

        devShells.default = pkgs.mkShell {
          packages = [
            venv
            python
            pkgs.uv
            rustToolchain
            pkgs.rust-analyzer
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
