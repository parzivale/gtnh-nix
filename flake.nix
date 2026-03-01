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
    base-url = "https://downloads.gtnewhorizons.com/ServerPacks/";
    versionModules = inputs.haumea.lib.load {
      src = ./versions;
      loader = inputs.haumea.lib.loaders.path;
    };
    version-list = [
      {
        version = "2.8.4";
        sha = "sha256-pY13GgfdcHU13wFRkIV1U5gpbB6RODYS0tMv82mQwIw=";
        java_version = "17-25";
        beta = false;
      }
      {
        version = "2.8.3";
        sha = "sha256-SPJtgGve6c+RwAU71cxTi6jqL+bA4t+1f3+xvOFsqn8=";
        java_version = "17-25";
        beta = false;
      }
      {
        version = "2.8.2";
        sha = "sha256-iiRqmyeS5huZyFSDy3qusI1mfnCkK/3MBnUE9OZa6yw=";
        java_version = "17-25";
        beta = false;
      }
      {
        version = "2.8.1";
        sha = "0zwz7hm33wwc39jab58jha5pfxfz4rv6w6why4z92diyaj4kcdf8";
        java_version = "17-25";
        beta = false;
      }
      {
        version = "2.8.0";
        sha = "1d58zqc7wa7x68dzp05cp544k0c8m5kihy09bgf53b30n1lph6ns";
        java_version = "17-25";
        beta = false;
      }
      {
        version = "2.8.0-rc-2";
        sha = "0wbr1kvs5yk2myz633zskiyn8hwwl3h9l5hab7g6hhndkhhjlmpf";
        java_version = "17-25";
        beta = true;
      }
      {
        version = "2.8.0-rc-1";
        sha = "0w8p2cxrpll1z72iwi3shhpk07pgky5mw6x3wr7zfflslykchz9f";
        java_version = "17-24";
        beta = true;
      }
      {
        version = "2.8.0-beta-4";
        sha = "0fr4jrcym67s0q472k57npvgbyzapdbig1wcry6ifvpa5sx4lbf9";
        java_version = "17-21";
        beta = true;
      }
      {
        version = "2.8.0-beta-3";
        sha = "0ji07zq7zkh0h4naw6pv9qmm0caig16ay5akczp19x49sgfrkc17";
        java_version = "17-21";
        beta = true;
      }
      {
        version = "2.8.0-beta-2";
        sha = "1hcna5mwpj32k3pnn4hx4fgzrchjp7h87gm09sxrrksdy46dm0ap";
        java_version = "17-21";
        beta = true;
      }
      {
        version = "2.8.0-beta-1";
        sha = "1ixcknw50zf851lr6xrxn9128qs9hd0nr1f5dhkhrbd8fspcyi9l";
        java_version = "17-21";
        beta = true;
      }
      {
        version = "2.7.4";
        sha = "0f4bx61yy7wm53m8qyq0f2kiwqxaqzaagrgv2x2x9fak0bnc5w3h";
        java_version = "17-21";
        beta = false;
      }
      {
        version = "April_Fool_2025_Edition";
        sha = "004irzn2x4cx6ilpw4asiggj18l2af9jghlv9np3bwf8iyxgbw0q";
        java_version = "17-21";
        beta = false;
      }
      {
        version = "2.7.3";
        sha = "1ha6pxgkswh5dy1dd46g35bq7dmgyn7scpsm9v0pccvacjgkxx7j";
        java_version = "17-21";
        beta = false;
      }
      {
        version = "2.7.2";
        sha = "0n2jy26ns3jxz3nb4idjw1gdfv3j9h706ns0q7gbmfhd4zfzjdr0";
        java_version = "17-21";
        beta = false;
      }
      {
        version = "2.7.1";
        sha = "1rzanw57sl8ppx5w7f7pj4a0hlblgx58rpjys7mlza83bfkagf03";
        java_version = "17-21";
        beta = false;
      }
      {
        version = "2.7.0";
        sha = "0xypig1n1kir914ykcxkpbw2nhc4kiv5fv66abnj5pabnc465ykw";
        java_version = "17-21";
        beta = false;
      }
      {
        version = "2.7.0-RC-3";
        sha = "0q947z56qdcskycsm4841m4ww1s2zkybr4plidiw46x8fyi5gf9n";
        java_version = "17-21";
        beta = true;
      }
      {
        version = "2.7.0-RC-2";
        sha = "0afxyk4yf3iqr1iv9mywrbskymbkxm3c4gf35ms3kqgnrx9dcg4v";
        java_version = "17-21";
        beta = true;
      }
      {
        version = "2.7.0-RC-1";
        sha = "0hsk2hdzz02qrgdrh7anzpmsjz4m1y5m8rw0i7gs81zcqgvw8yll";
        java_version = "17-21";
        beta = true;
      }
      {
        version = "2.7.0-beta-4";
        sha = "0ib98x6acjx1sm9b7w1dwpa3xc2sdfnyksb67kyj0cv6flwnmswv";
        java_version = "17-21";
        beta = true;
      }
      {
        version = "2.7.0-beta-3";
        sha = "0kh8pl70jy5zy6fxz7ccwnwwgl8nakq653n2m82jg7zvvjdyjgjb";
        java_version = "17-21";
        beta = true;
      }
      {
        version = "2.7.0-beta-2";
        sha = "07jf1a7pa24wxvcsjq8y10sh71inlmc0p8ylnk8clm47x8g9f0vr";
        java_version = "17-21";
        beta = true;
      }
      {
        version = "2.7.0-beta-1";
        sha = "0pb55vqgh8n5qf15zxfvgq779ga0nj6rfd4lddlvywkr4vnryzfq";
        java_version = "17-21";
        beta = true;
      }
      {
        version = "2.6.1";
        sha = "0y78pi9df949clpdvpfw5nl18bf6h2vj00rh71qbrc59gf3klgmf";
        java_version = "17-21";
        beta = false;
      }
      {
        version = "2.6.0";
        sha = "1rk5z0bin9zysx6hk62974nb87xi5wl1vsngwyw3pq1y8sylc5ig";
        java_version = "17-21";
        beta = false;
      }
      {
        version = "2.6.0-beta-3";
        sha = "09xcwayba310z41xjn8gi98ws5dhshx7bkslvnvshxcf48nd3yfz";
        java_version = "17-21";
        beta = true;
      }
      {
        version = "2.6.0-beta-2";
        sha = "0dh8p73m63qf3q75vfwm3sis0icz7wzs13qa3jncxgx0cy7w94rn";
        java_version = "17-21";
        beta = true;
      }
      {
        version = "2.6.0-beta-1";
        sha = "108g5im8a89ii4amg9clzgzdbdnpy6im3vs9jd6y3g3ccgy37kp0";
        java_version = "17-21";
        beta = true;
      }
      {
        version = "2.5.1";
        sha = "18r1cdipqarzz44mwgk93c8h1y73ajgx1wd9s4lj3xjjxx4bppda";
        java_version = "17-21";
        beta = false;
      }
      {
        version = "2.5.0";
        sha = "0sws1vvdxp4qrm8yb109kz5ls5ddljkzqj4i7fs6vw8i9y0zbhhn";
        java_version = "17-21";
        beta = false;
      }
      # for some reason the download is not available
      # {
      #   version = "2.5.0-RC1";
      #   sha = "sha256-iiRqmyeS5huZyFSDy3qusI1mfnCkK/3MBnUE9OZa6yw=";
      #   java_version = "17-21";
      #   beta = true;
      # }
      {
        version = "2.5.0-beta-1";
        sha = "1cw0shawxiz97mdsmrkdhs5r4yv293xr5g4m16j664yjdl9mnqd6";
        java_version = "17-20";
        beta = true;
      }
      {
        version = "2.4.1";
        sha = "195v9sjifacw5bxlplfsd5lk5igcrh5kslyzv4rywjjq7idd72i3";
        java_version = "17-20";
        beta = true;
      }
      {
        version = "2.4.0";
        sha = "15pgwrkrjd2abscrd76kjdrz28ahg9rd4v7nfn5vp1zdalw705zs";
        java_version = "17-20";
        beta = false;
      }
    ];
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

        mkVersion = version:
          pkgs.stdenv.mkDerivation {
            name = "gtnh";
            version = version.version;
            src = pkgs.fetchurl {
              url = "${base-url}${
                if version.beta
                then "/betas/"
                else ""
              }GT_New_Horizons_${version.version}_Server_Java_${version.java_version}.zip";
              sha256 = version.sha;
            };
            nativeBuildInputs = [pkgs.unzip];
            unpackPhase = ''
              unzip $src
            '';
            installPhase = ''
              mkdir -p $out
              cp -r . $out/
            '';
          };

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
          builtins.listToAttrs (map (filepath: {
              name = lib.removeSuffix ".nix" (builtins.baseNameOf filepath);
              value = mkDoc filepath;
            })
            (filePaths dir));

        modDocs = mkDocs ./options/mods;
        minecraftDocs = mkDocs ./options/minecraft;

        bookToml = pkgs.writeText "book.toml" ''
          [book]
          title = "GTNH Nix Configuration Options"
          language = "en"
          src = "src"

          [output.html]
          no-section-label = true
          site-url = "/gtnh-nix/"
        '';

        summaryMd = pkgs.writeText "SUMMARY.md" ''
          # Summary

          [Introduction](index.md)

          # Minecraft options

          ${lib.concatStringsSep "\n" (map (modName: "- [${modName}](${modName}.md)") (builtins.attrNames minecraftDocs))}

          # Mod options

          ${lib.concatStringsSep "\n" (map (modName: "- [${modName}](${modName}.md)") (builtins.attrNames modDocs))}
        '';

        indexDoc = pkgs.writeText "index.md" ''
          # GTNH Nix Configuration Options

          Configuration options exposed by the gtnh-nix NixOS module.

          ## Minecraft options

          ${lib.concatStringsSep "\n" (map (modName: "- [${modName}](${modName}.md)") (builtins.attrNames minecraftDocs))}

          ## Mod options

          ${lib.concatStringsSep "\n" (map (modName: "- [${modName}](${modName}.md)") (builtins.attrNames modDocs))}
        '';

        allDocs =
          pkgs.runCommand "gtnh-docs" {
            nativeBuildInputs = [pkgs.mdbook];
          } ''
            mkdir -p book/src
            cp ${bookToml} book/book.toml
            cp ${summaryMd} book/src/SUMMARY.md
            cp ${indexDoc}  book/src/index.md
            ${lib.concatStringsSep "\n" (lib.mapAttrsToList (modName: doc: ''
                cp ${doc} book/src/${modName}.md
              '')
              modDocs)}
            ${lib.concatStringsSep "\n" (lib.mapAttrsToList (optionName: doc: ''
                cp ${doc} book/src/${optionName}.md
              '')
              minecraftDocs)}
            mdbook build book --dest-dir $out
          '';
      in {
        packages =
          builtins.listToAttrs (builtins.map (version: {
              name = "gtnh-${version.version}";
              value = mkVersion version;
            })
            version-list)
          // lib.mapAttrs' (modName: doc: lib.nameValuePair "docs-${modName}" doc) modDocs
          // lib.mapAttrs' (optionName: doc: lib.nameValuePair "docs-${optionName}" doc) minecraftDocs
          // {docs = allDocs;};

        overlayAttrs = builtins.listToAttrs (builtins.map (version: {
            name = "gtnh-${version.version}";
            value = config.packages."gtnh-${version.version}";
          })
          version-list);
      };
      flake = {
        nixosModules =
          {
            gtnh = module @ {
              pkgs,
              config,
              lib,
              ...
            }: let
              inherit (import ./lib.nix {inherit lib pkgs;}) mkConfigFile;

              eulaFile = builtins.toFile "eula.txt" ''
                # eula.txt managed by NixOS Configuration

                eula=true
              '';

              serverPropertiesFile = serverConfig:
                pkgs.writeText "server.properties"
                (mkOptionText serverConfig);

              encodeOptionValue = value: let
                encodeBool = value:
                  if value
                  then "true"
                  else "false";
                encodeString = value: lib.escape [":" "=" "'"] value;
                typeMap = {
                  "bool" = encodeBool;
                  "string" = encodeString;
                };
              in
                (typeMap.${builtins.typeOf value} or toString) value;

              mkOptionLine = name: value: let
                dotNames = ["query-port" "rcon-password" "rcon-port"];
                fixName = name:
                  if builtins.elem name dotNames
                  then
                    lib.stringAsChars
                    (x:
                      if x == "-"
                      then "."
                      else x)
                    name
                  else name;
              in "${fixName name}=${encodeOptionValue value}";

              mkOptionText = serverConfig: let
                # Merge declared options with extraConfig
                c =
                  builtins.removeAttrs serverConfig ["extra-options"];
              in
                lib.concatStringsSep "\n"
                (lib.mapAttrsToList mkOptionLine c);

              options.programs.gtnh = lib.mkOption {
                type = lib.types.submodule (subArgs: {
                  options =
                    inputs.haumea.lib.load {
                      src = ./options;
                      inputs = module // {config = subArgs.config;};
                    }
                    // {
                      enable = lib.mkEnableOption "Enable the GTNH server";
                    };
                });
              };
            in {
              inherit options;
              config = lib.mkIf config.programs.gtnh.enable {
                systemd.services.gtnh = {
                  description = "GTNH Server";
                  wantedBy = ["multi-user.target"];
                  after = ["network.target"];

                  path = with pkgs; [config.programs.gtnh.minecraft.instance-options.jvmPackage bash];

                  script = ''
                    exec ${config.programs.gtnh.minecraft.instance-options.jvmPackage}/bin/java \
                      ${config.programs.gtnh.minecraft.instance-options.jvmOptString} \
                      -jar lwjgl3ify-forgePatches.jar nogui
                  '';
                  environment = {
                    MCRCON_PORT = toString config.programs.gtnh.minecraft.server-properties.rcon-port;
                    MCRCON_PASS = toString config.programs.gtnh.minecraft.server-properties.rcon-password;
                  };
                  serviceConfig = {
                    Restart = "always";
                    ExecStop = ''
                      ${pkgs.mcrcon}/bin/mcrcon stop
                    '';
                    TimeoutStopSec = "20";
                    User = "gtnh-user";
                    StateDirectory = "gtnh";
                    WorkingDirectory = "/var/lib/gtnh";
                  };

                  preStart = ''
                    # Reproduce the pack's directory tree.
                    # config/* files are copied (not symlinked) so mods can write to
                    # them at startup; existing files are backed up first.
                    # Everything else (jars etc.) is symlinked.
                    while IFS= read -r -d $'\0' entry; do
                      rel="''${entry#${config.programs.gtnh.minecraft.instance-options.gtnhPackage}/}"
                      if [[ -d "$entry" ]]; then
                        mkdir -p "$rel"
                      else
                        case "$rel" in
                          config/*)
                            if [[ -f "$rel" ]]; then
                              mv -f "$rel" "$rel.bak"
                            fi
                            cp "$entry" "$rel"
                            chmod 644 "$rel"
                            ;;
                          *.json|*.cache)
                            if [[ ! -f "$rel" ]]; then
                              cp "$entry" "$rel"
                              chmod 644 "$rel"
                            fi
                            ;;
                          *)
                            ln -sf "$entry" "$rel"
                            ;;
                        esac
                      fi
                    done < <(find ${config.programs.gtnh.minecraft.instance-options.gtnhPackage} -mindepth 1 -print0 | sort -z)
                    # Ensure EULA is accepted
                    if [[ -f eula.txt ]]; then
                      mv -f eula.txt eula.txt.bak
                    fi
                    cp ${eulaFile} eula.txt
                    chmod 644 eula.txt
                    # Place managed config files (copy rendered content so mods can write to them)
                    ${lib.concatStringsSep "\n" (lib.flatten (lib.mapAttrsToList (_modGroup: cfgs:
                      lib.mapAttrsToList (_cfgName: value: ''
                        if [[ -f "${value.path}" ]]; then
                          mv -f "${value.path}" "${value.path}.bak"
                        fi
                        cp ${mkConfigFile value} "${value.path}"
                        chmod 644 "${value.path}"
                      '')
                      cfgs)
                    config.programs.gtnh.mods))}
                    # Ensure server.properties is present
                    if [[ -f server.properties ]]; then
                      mv -f server.properties server.properties.bak
                    fi
                    cp ${serverPropertiesFile config.programs.gtnh.minecraft.server-properties} server.properties
                    chmod 644 server.properties
                  '';
                };

                users.users.gtnh-user = {
                  description = "GTNH service user";
                  isSystemUser = true;
                  group = "gtnh";
                  home = "/var/lib/gtnh";
                };

                users.groups.gtnh = {};
                networking.firewall.allowedUDPPorts = [config.programs.gtnh.minecraft.server-properties.query-port];
                networking.firewall.allowedTCPPorts = [config.programs.gtnh.minecraft.server-properties.server-port config.programs.gtnh.minecraft.server-properties.query-port config.programs.gtnh.minecraft.server-properties.rcon-port];
              };
            };
          }
          // builtins.listToAttrs (builtins.map (v: let
              vKey = builtins.replaceStrings ["."] ["-"] v.version;
            in {
              name = v.version;
              value = {
                config,
                lib,
                ...
              }: {
                imports =
                  if versionModules ? ${vKey}
                  then [versionModules.${vKey}]
                  else [];
                programs.gtnh.minecraft.instance-options.version =
                  lib.mkIf config.programs.gtnh.enable (lib.mkDefault v.version);
              };
            })
            version-list);
      };
    });
}
