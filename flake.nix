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
    # Discover version directories that contain a default.nix
    versionDirs = builtins.readDir ./versions;
    versionModules = builtins.listToAttrs (builtins.filter (x: x != null) (builtins.map (
      name: let
        path = ./versions + "/${name}";
        isDir = versionDirs.${name} == "directory";
        hasDefault = isDir && builtins.pathExists (path + "/default.nix");
      in
        if hasDefault
        then {
          name = builtins.replaceStrings ["."] ["-"] name;
          value = path;
        }
        else null
    ) (builtins.attrNames versionDirs)));
    version-list = import ./version-list;
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
      }: let
        lib = pkgs.lib;

        filePaths = dir: let
          files = builtins.readDir dir;
        in
          builtins.map (name: dir + "/${name}")
          (builtins.filter (name: lib.hasSuffix ".nix" name) (builtins.attrNames files));

        manpageUrls = pkgs.writeText "manpage-urls.json" "{}";

        mkDoc = path: let
          modOpts = import path {
            inherit lib pkgs;
            config = {};
          };
          evaluated = lib.evalModules {
            modules = [{options = modOpts;}];
          };
          optionsDoc = pkgs.nixosOptionsDoc {
            options = builtins.removeAttrs evaluated.options ["_module"];
            warningsAreErrors = false;
          };
        in
          pkgs.runCommand "options.md" {
            nativeBuildInputs = [pkgs.nixos-render-docs pkgs.jq];
          } ''
            jq 'with_entries(select(
              (.value.type != "submodule") and
              ((.key | split(".") | last) | . != "path" and . != "kind")
            ))' < ${optionsDoc.optionsJSON}/share/doc/nixos/options.json > filtered.json
            nixos-render-docs options commonmark \
              --manpage-urls ${manpageUrls} \
              --revision "" \
              filtered.json \
              $out
          '';

        mkDocs = dir:
          if builtins.pathExists dir
          then
            builtins.listToAttrs (map (filepath: {
                name = lib.removeSuffix ".nix" (builtins.baseNameOf filepath);
                value = mkDoc filepath;
              })
              (filePaths dir))
          else {};

        # Discover versions with options directories
        versionsWithOptions = builtins.filter (
          name: let
            path = ./versions + "/${name}/options";
          in
            builtins.pathExists path
        ) (builtins.attrNames versionDirs);

        # Generate docs per version
        versionDocs = builtins.listToAttrs (map (version: {
            name = version;
            value = {
              mods = mkDocs (./versions + "/${version}/options/mods");
              minecraft = mkDocs (./versions + "/${version}/options/minecraft");
            };
          })
          versionsWithOptions);

        bookToml = pkgs.writeText "book.toml" ''
          [book]
          title = "GTNH Nix Configuration Options"
          language = "en"
          src = "src"

          [output.html]
          no-section-label = true
          site-url = "/gtnh-nix/"
        '';

        # Generate SUMMARY.md with sections per version
        summaryMd = pkgs.writeText "SUMMARY.md" ''
          # Summary

          [Introduction](index.md)

          ${lib.concatStringsSep "\n\n" (map (version: ''
              # ${version}

              ## Minecraft options

              ${lib.concatStringsSep "\n" (map (modName: "- [${modName}](${version}/${modName}.md)") (builtins.attrNames versionDocs.${version}.minecraft))}

              ## Mod options

              ${lib.concatStringsSep "\n" (map (modName: "- [${modName}](${version}/${modName}.md)") (builtins.attrNames versionDocs.${version}.mods))}
            '')
            versionsWithOptions)}
        '';

        indexDoc = pkgs.writeText "index.md" ''
          # GTNH Nix Configuration Options

          Configuration options exposed by the gtnh-nix NixOS module.

          ## Available Versions

          ${lib.concatStringsSep "\n" (map (version: "- [${version}](${version}/index.md)") versionsWithOptions)}
        '';

        # Generate per-version index pages
        mkVersionIndex = version:
          pkgs.writeText "index.md" ''
            # ${version} Configuration Options

            ## Minecraft options

            ${lib.concatStringsSep "\n" (map (modName: "- [${modName}](${modName}.md)") (builtins.attrNames versionDocs.${version}.minecraft))}

            ## Mod options

            ${lib.concatStringsSep "\n" (map (modName: "- [${modName}](${modName}.md)") (builtins.attrNames versionDocs.${version}.mods))}
          '';

        allDocs =
          pkgs.runCommand "gtnh-docs" {
            nativeBuildInputs = [pkgs.mdbook];
          } ''
            mkdir -p book/src
            cp ${bookToml} book/book.toml
            cp ${summaryMd} book/src/SUMMARY.md
            cp ${indexDoc}  book/src/index.md

            # Copy docs for each version
            ${lib.concatStringsSep "\n" (map (version: ''
                mkdir -p book/src/${version}
                cp ${mkVersionIndex version} book/src/${version}/index.md
                ${lib.concatStringsSep "\n" (lib.mapAttrsToList (modName: doc: ''
                    cp ${doc} book/src/${version}/${modName}.md
                  '')
                  versionDocs.${version}.mods)}
                ${lib.concatStringsSep "\n" (lib.mapAttrsToList (optionName: doc: ''
                    cp ${doc} book/src/${version}/${optionName}.md
                  '')
                  versionDocs.${version}.minecraft)}
              '')
              versionsWithOptions)}

            mdbook build book --dest-dir $out
          '';
      in {
        packages =
          builtins.listToAttrs (builtins.map (version: {
              name = "gtnh-${version.version}";
              value = lib.mkVersion version;
            })
            version-list)
          # Per-version doc packages
          // lib.foldl' (
            acc: version:
              acc
              // lib.mapAttrs' (modName: doc: lib.nameValuePair "docs-${version}-${modName}" doc) versionDocs.${version}.mods
              // lib.mapAttrs' (optionName: doc: lib.nameValuePair "docs-${version}-${optionName}" doc) versionDocs.${version}.minecraft
          ) {}
          versionsWithOptions
          // {docs = allDocs;};

        overlayAttrs = builtins.listToAttrs (builtins.map (version: {
            name = "gtnh-${version.version}";
            value = config.packages."gtnh-${version.version}";
          })
          version-list);
      };
      flake = rec {
        # Use lib output to bypass flake-parts module processing
        lib.nixosModules = builtins.listToAttrs (builtins.map (v: let
            vKey = builtins.replaceStrings ["."] ["-"] v.version;
          in {
            name = "gtnh-${v.version}";
            value = {
              config,
              lib,
              pkgs,
              ...
            }: {
              imports =
                if versionModules ? ${vKey}
                then [
                  (import (versionModules.${vKey} + "/default.nix") {
                    inherit lib pkgs;
                    haumea = inputs.haumea;
                  })
                ]
                else [];

              config = lib.mkIf config.programs.gtnh.enable;
            };
          })
          version-list);
        # Expose as standard nixosModules output
        nixosModules = lib.nixosModules;
      };
    });
}
