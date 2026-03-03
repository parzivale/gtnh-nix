{
  config,
  pkgs,
  lib,
  version,
  ...
}: let
  inherit
    (import ./lib.nix {
      inherit lib pkgs;
    })
    mkConfigFile
    ;
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
in {
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

  programs.gtnh.minecraft.instance-options.version = lib.mkDefault version;
}
