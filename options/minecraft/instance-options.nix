pkgs: {
  name,
  lib,
  config,
  ...
}:
with lib; let
  mkJvmMxFlag = icfg: optionalString (icfg.jvmMaxAllocation != "") "-Xmx${icfg.jvmMaxAllocation}";
  mkJvmMsFlag = icfg: optionalString (icfg.jvmInitialAllocation != "") "-Xms${icfg.jvmInitialAllocation}";
  mkJvmOptString = icfg: "${mkJvmMxFlag icfg} ${mkJvmMsFlag icfg} ${icfg.jvmOpts}";
in {
  options = {
    enable = mkEnableOption "Enable minecraft server instance ${name}";

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
        within the last <literal>autoRestartOpportunisticMinInterval</literal>
        minutes.
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
      default = pkgs.jre8;
      description = ''
        JVM package used to run the server.

        <emphasis>Note:</emphasis> Do not use the
        <literal>jre8_headless</literal> package. Modded minecraft needs
        <literal>awt</literal>.
      '';
    };

    jvmMaxAllocation = mkOption {
      type = with types; str;
      default = "6G";
      description = ''
        Maximum memory allocation pool for the JVM, as set by
        <literal>-Xmx</literal>.

        Default is JVM default. You definitely want to change this.
      '';
    };

    jvmInitialAllocation = mkOption {
      type = with types; str;
      default = "6G";
      description = ''
        Initial memory allocation pool for the JVM, as set by
        <literal>-Xms</literal>.

        Defaults to not being set.
      '';
    };

    jvmOpts = mkOption {
      type = with types; str;
      default = lib.concatStringsSep " " [
        "-Dfml.readTimeout=180"
        "-Dfile.encoding=UTF-8"
        "-Djava.system.class.loader=com.gtnewhorizons.retrofuturabootstrap.RfbSystemClassLoader"
        "--add-opens java.base/java.io=ALL-UNNAMED"
        "--add-opens java.base/java.lang.invoke=ALL-UNNAMED"
        "--add-opens java.base/java.lang.ref=ALL-UNNAMED"
        "--add-opens java.base/java.lang.reflect=ALL-UNNAMED"
        "--add-opens java.base/java.lang=ALL-UNNAMED"
        "--add-opens java.base/java.net.spi=ALL-UNNAMED"
        "--add-opens java.base/java.net=ALL-UNNAMED"
        "--add-opens java.base/java.nio.channels=ALL-UNNAMED"
        "--add-opens java.base/java.nio.charset=ALL-UNNAMED"
        "--add-opens java.base/java.nio.file=ALL-UNNAMED"
        "--add-opens java.base/java.nio=ALL-UNNAMED"
        "--add-opens java.base/java.text=ALL-UNNAMED"
        "--add-opens java.base/java.time.chrono=ALL-UNNAMED"
        "--add-opens java.base/java.time.format=ALL-UNNAMED"
        "--add-opens java.base/java.time.temporal=ALL-UNNAMED"
        "--add-opens java.base/java.time.zone=ALL-UNNAMED"
        "--add-opens java.base/java.time=ALL-UNNAMED"
        "--add-opens java.base/java.util.concurrent.atomic=ALL-UNNAMED"
        "--add-opens java.base/java.util.concurrent.locks=ALL-UNNAMED"
        "--add-opens java.base/java.util.jar=ALL-UNNAMED"
        "--add-opens java.base/java.util.zip=ALL-UNNAMED"
        "--add-opens java.base/java.util=ALL-UNNAMED"
        "--add-opens java.base/jdk.internal.loader=ALL-UNNAMED"
        "--add-opens java.base/jdk.internal.misc=ALL-UNNAMED"
        "--add-opens java.base/jdk.internal.ref=ALL-UNNAMED"
        "--add-opens java.base/jdk.internal.reflect=ALL-UNNAMED"
        "--add-opens java.base/sun.nio.ch=ALL-UNNAMED"
        "--add-opens java.desktop/com.sun.imageio.plugins.png=ALL-UNNAMED"
        "--add-opens java.desktop/sun.awt.image=ALL-UNNAMED"
        "--add-opens java.desktop/sun.awt=ALL-UNNAMED"
        "--add-opens java.sql.rowset/javax.sql.rowset.serial=ALL-UNNAMED"
        "--add-opens jdk.dynalink/jdk.dynalink.beans=ALL-UNNAMED"
        "--add-opens jdk.naming.dns/com.sun.jndi.dns=ALL-UNNAMED,java.naming"
      ];
      description = ''
        JVM options used to call Minecraft on server startup.

        The default value should serve you well unless you have specific
        needs.

        Note: Do not include <literal>-Xms</literal> or
        <literal>-Xmx</literal> here.

        See <literal>jvmMaxAllocation</literal> for <literal>-Xmx</literal>
        and <literal>jvmInitialAllocation</literal> for
        <literal>-Xms</literal>.
      '';
    };

    jvmOptString = mkOption {
      type = with types; str;
      default = mkJvmOptString config;
      readOnly = true;
      description = ''
        The compiled value of $JVMOPTS, exported as a read-only value.
      '';
    };
  };
}
