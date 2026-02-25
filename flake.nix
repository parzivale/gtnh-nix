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
    flake-parts.lib.mkFlake {inherit inputs;} {
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
        base-url = "https://downloads.gtnewhorizons.com/ServerPacks/";
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
        modules.nixos.gtnh = module @ {
          pkgs,
          config,
          lib,
          ...
        }: let
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

          mkTypePrefix = v:
            if builtins.isBool v
            then "B"
            else if builtins.isInt v
            then "I"
            else if builtins.isFloat v
            then "D"
            else "S";

          mkValue = v:
            if builtins.isBool v
            then
              (
                if v
                then "true"
                else "false"
              )
            else toString v;

          mkEntry = k: v:
            if lib.hasPrefix "_" k
            then ""
            else if builtins.isAttrs v
            then "\"${k}\" {\n${mkAttrs v}\n}"
            else if builtins.isList v
            then let
              prefix =
                if v == []
                then "S"
                else mkTypePrefix (builtins.head v);
            in "${prefix}:\"${k}\" <\n${lib.concatMapStrings (x: "${mkValue x}\n") v}>"
            else "${mkTypePrefix v}:\"${k}\"=${mkValue v}";

          mkAttrs = attrs:
            lib.concatStringsSep "\n" (lib.mapAttrsToList mkEntry attrs);
          options.programs.gtnh = lib.mkOption {
            type = lib.types.submodule {
              options = inputs.haumea.lib.load {
                src = ./options;
                inputs = module;
              };
            };
          };
        in {
          inherit options;
          config.systemd.services.gtnh = {
            description = "GTNH Server";
            wantedBy = ["multi-user.target"];
            after = ["network.target"];

            path = with pkgs; [config.programs.gtnh.jvmPackage bash];

            script = ''
              exec ${config.programs.gtnh.jvmPackage}/bin/java \
                ${config.programs.gtnh.jvmOptString} \
                -jar lwjgl3ify-forgePatches.jar nogui
            '';
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
              # Ensure EULA is accepted
              ln -sf ${config.programs.gtnh.gtnhPackage}
              ln -sf ${eulaFile} eula.txt

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
    };
}
