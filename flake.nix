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
      }
      {
        version = "2.8.3";
        sha = "sha256-SPJtgGve6c+RwAU71cxTi6jqL+bA4t+1f3+xvOFsqn8=";
      }
      {
        version = "2.8.2";
        sha = "sha256-iiRqmyeS5huZyFSDy3qusI1mfnCkK/3MBnUE9OZa6yw=";
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
        mkVersion = version:
          pkgs.stdenv.mkDerivation {
            name = "gtnh";
            version = version.version;
            src = pkgs.fetchurl {
              url = "${base-url}GT_New_Horizons_${version.version}_Server_Java_17-25.zip";
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

      in {
        packages = builtins.listToAttrs (builtins.map (version: {
            name = "gtnh-${version.version}";
            value = mkVersion version;
          })
          version-list);

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
                  (builtins.removeAttrs serverConfig ["extra-options"])
                  // serverConfig.extra-options;
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
                          *.json)
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
                        '') cfgs)
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
