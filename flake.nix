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
      systems = ["x86_64-linux" "aarch64-linux" "aarch64-darwin" "x86_64-darwin"];
      perSystem = {
        config,
        self',
        inputs',
        pkgs,
        system,
        ...
      }: {};
      flake = module @ {
        pkgs,
        config,
        lib,
        ...
      }: {
        modules.nixos.gtnh = let
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

            environment = {
              MCRCON_PORT = toString config.programs.gtnh.minecraft.server-properties.rcon-port;
              MCRCON_PASS = toString config.programs.gtnh.minecraft.server-properties.rcon-password;
            };
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
