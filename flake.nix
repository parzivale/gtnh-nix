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
      ];
      systems = ["x86_64-linux" "aarch64-linux" "aarch64-darwin" "x86_64-darwin"];
      perSystem = {
        config,
        self',
        inputs',
        pkgs,
        system,
        lib,
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

        inherit (import ./lib.nix {inherit lib pkgs;}) mkConfigFile;

        # Evaluate the gtnh NixOS module with all defaults so we can extract
        # config values for comparison checks.
        moduleEval = lib.evalModules {
          modules = [
            self.modules.nixos.gtnh
            {
              _module.args.pkgs = pkgs;
              _module.check = false;
              programs.gtnh.enable = true;
            }
          ];
        };

        # Build a derivation that passes iff the rendered config file
        # semantically matches the corresponding file in the 2.8.4 pack.
        # Normalisation: strip comments, blank lines, whitespace, quotes, and
        # type prefixes (B:/I:/D:/S:) then sort — so only key names and values
        # are compared, not formatting.
        mkCfgCheck = name: cfgValue: relPath: let
          rendered = mkConfigFile cfgValue;
          original = "${config.packages."gtnh-2.8.4"}/${relPath}";
        in
          pkgs.runCommand "check-cfg-${name}" {} ''
            normalize() {
              grep -v '^\s*#' "$1" \
                | grep -v '^\s*$' \
                | tr -d ' \t"' \
                | sed 's/^[BIDS]://' \
                | awk '/[0-9]+\.[0-9]+$/ { sub(/0+$/, ""); sub(/\.$/, ".0") } { print }' \
                | sort -u
            }
            normalize ${original}  > orig_norm
            normalize ${rendered} > rendered_norm
            if ! diff orig_norm rendered_norm; then
              echo ""
              echo "FAIL: rendered ${name} does not match ${relPath} from gtnh-2.8.4"
              exit 1
            fi
            touch $out
          '';
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

        checks = {
          serverutilities-cfg =
            mkCfgCheck
            "serverutilities-cfg"
            moduleEval.config.programs.gtnh.mods.ServerUtilities.ServerUtilities
            "serverutilities/serverutilities.cfg";

          aurora-cfg =
            mkCfgCheck
            "aurora-cfg"
            moduleEval.config.programs.gtnh.mods.ServerUtilities.Aurora
            "serverutilities/aurora.cfg";

          gregtech-client-cfg =
            mkCfgCheck
            "gregtech-client-cfg"
            moduleEval.config.programs.gtnh.mods.GregTech.Client
            "config/GregTech/Client.cfg";

          gregtech-pollution-cfg =
            mkCfgCheck
            "gregtech-pollution-cfg"
            moduleEval.config.programs.gtnh.mods.GregTech.Pollution
            "config/GregTech/Pollution.cfg";

          gregtech-cfg =
            mkCfgCheck
            "gregtech-cfg"
            moduleEval.config.programs.gtnh.mods.GregTech.GregTech
            "config/GregTech/GregTech.cfg";

          gregtech-machinestats-cfg =
            mkCfgCheck
            "gregtech-machinestats-cfg"
            moduleEval.config.programs.gtnh.mods.GregTech.MachineStats
            "config/GregTech/MachineStats.cfg";

          gregtech-other-cfg =
            mkCfgCheck
            "gregtech-other-cfg"
            moduleEval.config.programs.gtnh.mods.GregTech.Other
            "config/GregTech/Other.cfg";

          gregtech-overpoweredstuff-cfg =
            mkCfgCheck
            "gregtech-overpoweredstuff-cfg"
            moduleEval.config.programs.gtnh.mods.GregTech.OverpoweredStuff
            "config/GregTech/OverpoweredStuff.cfg";

          gregtech-worldgeneration-cfg =
            mkCfgCheck
            "gregtech-worldgeneration-cfg"
            moduleEval.config.programs.gtnh.mods.GregTech.WorldGeneration
            "config/GregTech/WorldGeneration.cfg";
        };
      };
      flake = {
        modules.nixos =
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
                encodeString = value: builtins.escape [":" "=" "'"] value;
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
                    builtins.stringAsChars
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
                builtins.concatStringsSep "\n"
                (builtins.mapAttrsToList mkOptionLine c);

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
                    for f in ${config.programs.gtnh.minecraft.instance-options.gtnhPackage}/*; do
                      ln -sf "$f" .
                    done
                    # Ensure EULA is accepted
                    ln -sf ${eulaFile} eula.txt
                    ${lib.concatStringsSep "\n" (lib.mapAttrsToList (name: value: ''
                        if [[ -f ${value.path} ]]; then
                          mv -f ${value.path} ${value.path}.bak
                        fi
                        ln -sf ${mkConfigFile value} ${value.path}
                      '')
                      config.programs.gtnh.mods)}
                    # Ensure server.properties is present
                    if [[ -f server.properties ]]; then
                      mv -f server.properties server.properties.bak
                    fi

                    # This file must be writeable, because Mojang.
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
              }:
                lib.mkIf config.programs.gtnh.enable {
                  imports =
                    if versionModules ? ${vKey}
                    then [versionModules.${vKey}]
                    else [];
                  programs.gtnh.minecraft.instance-options.version = lib.mkDefault v.version;
                };
            })
            version-list);
      };
    });
}
