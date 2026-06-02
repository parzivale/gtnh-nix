# Shared NixOS-service-level instance options. Per-version data
# (heap sizes, JVM flag list) comes in via the `launcher` argument,
# which flake.nix imports from versions/<v>/launcher.nix. The dir
# name is passed in separately as `version`.
{
  lib,
  pkgs,
  config,
  launcher,
  version,
}:
with lib;
let
  mkJvmMxFlag = icfg: optionalString (icfg.jvmMaxAllocation != "") "-Xmx${icfg.jvmMaxAllocation}";
  mkJvmMsFlag =
    icfg: optionalString (icfg.jvmInitialAllocation != "") "-Xms${icfg.jvmInitialAllocation}";
  mkJvmOptString =
    icfg:
    lib.concatStringsSep " " (
      lib.filter (s: s != "") (
        [
          (mkJvmMxFlag icfg)
          (mkJvmMsFlag icfg)
        ]
        ++ icfg.jvmOpts
        ++ icfg.extraJvmOpts
      )
    );
in
{
  openRcon = mkOption {
    type = with types; bool;
    default = false;
    description = ''
      Whether to open the RCON port in the firewall. Local RCON is used for server automation. Public RCON requires additional security.
    '';
  };

  autoRestartTimer = mkOption {
    type = with types; int;
    default = 0;
    description = ''
      Sets a wall timer in minutes to restart the server. How often this is
      necessary depends on mods, population, and activity. 24h is a decent
      default. Set to 0 to disable.

      The restart action will start a 15 minute timer, sending a global
      notification every 5 minutes to advise players about the restart. When
      the timer elapses, the unit is restarted.
    '';
  };

  autoRestartOpportunisticCheckTimer = mkOption {
    type = with types; int;
    default = 0;
    description = ''
      Opportunistically restart the server when nobody is online. Sets a wall
      timer in minutes to check for currently online players. If two checks in
      a row find nobody online, restart the server if it hasn't been restarted
      within the last `autoRestartOpportunisticMinInterval` minutes.
    '';
  };

  autoRestartOpportunisticMinInterval = mkOption {
    type = with types; int;
    default = 0;
    description = ''
      Minimum online interval for opportunistic server restart. Do not
      opportunistically restart the server unless at least this many minutes
      have elapsed since the last server start. This is to avoid restarting
      the server too often as people come and go.
    '';
  };

  jvmPackage = mkOption {
    type = with types; package;
    default = pkgs.jdk25;
    defaultText = lib.literalExpression "pkgs.jdk25";
    description = ''
      JVM package used to run the server.

      *Note:* Do not use the `jre8_headless` package. Modded minecraft needs `awt`.
    '';
  };

  gtnhPackage = mkOption {
    type = with types; package;
    default = pkgs."gtnh-${config.minecraft."instance-options".version}";
    defaultText = lib.literalExpression ''pkgs."gtnh-''${config.minecraft."instance-options".version}"'';
    description = ''
      GTNH package used for the server.
    '';
  };

  jvmMaxAllocation = mkOption {
    type = with types; str;
    default = launcher.xmx;
    defaultText = lib.literalExpression "launcher.xmx (from versions/<v>/launcher.nix)";
    description = ''
      Maximum memory allocation pool for the JVM, as set by `-Xmx`.

      Default is taken from the pack's `startserver-java9.sh`. You
      definitely want to change this for production.
    '';
  };

  jvmInitialAllocation = mkOption {
    type = with types; str;
    default = launcher.xms;
    defaultText = lib.literalExpression "launcher.xms (from versions/<v>/launcher.nix)";
    description = ''
      Initial memory allocation pool for the JVM, as set by `-Xms`.

      Default is taken from the pack's `startserver-java9.sh`.
    '';
  };

  jvmOpts = mkOption {
    type = with types; listOf str;
    default = launcher.opts;
    defaultText = lib.literalExpression "launcher.opts (from versions/<v>/launcher.nix)";
    description = ''
      JVM options used to call Minecraft on server startup, as a list of
      tokens. Default is the pack's own `-D` properties plus the
      `--add-opens` set from `java9args.txt`, captured at pack-generation
      time.

      Setting this replaces the pack defaults entirely. To *add* options
      while keeping the defaults, use `extraJvmOpts`.

      Note: Do not include `-Xms` or `-Xmx` here.

      See `jvmMaxAllocation` for `-Xmx` and `jvmInitialAllocation` for `-Xms`.
    '';
  };

  extraJvmOpts = mkOption {
    type = with types; listOf str;
    default = [ ];
    description = ''
      Extra JVM options appended after `jvmOpts`. Use this to add flags
      without redefining the full pack-default set.
    '';
  };

  jvmOptString = mkOption {
    type = with types; str;
    default = mkJvmOptString config.minecraft."instance-options";
    defaultText = lib.literalExpression ''mkJvmOptString config.minecraft."instance-options"'';
    readOnly = true;
    description = ''
      The compiled value of $JVMOPTS, exported as a read-only value.
    '';
  };

  version = mkOption {
    type = with types; str;
    default = version;
    defaultText = lib.literalExpression "the directory name under versions/";
    description = ''
      GTNH version to run. Must match an entry in the version-list and have
      a corresponding package exposed via the overlay (e.g. gtnh-2.8.4).
    '';
  };
}
