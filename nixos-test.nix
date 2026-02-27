{self, ...}: {
  perSystem = {
    pkgs,
    lib,
    system,
    ...
  }: {
    # nixosTest only runs on Linux (requires QEMU)
    checks = lib.optionalAttrs (builtins.elem system ["x86_64-linux" "aarch64-linux"]) {
      nixos-service = pkgs.testers.nixosTest {
        name = "gtnh-service-wiring";

        nodes.machine = {lib, ...}: {
          imports = [self.nixosModules.gtnh];
          programs.gtnh.enable = true;

          # Minimal fake pack — real pack would include config/ subdirs from the zip
          programs.gtnh.minecraft.instance-options.gtnhPackage =
            pkgs.runCommand "fake-gtnh-pack" {} ''
              mkdir -p \
                $out/serverutilities \
                $out/config/GregTech \
                $out/config/AppliedEnergistics2 \
                $out/config/Betterloadingscreen \
                $out/config/ClimateControl \
                $out/config/GTNewHorizons \
                $out/config/GTPlusPlus \
                $out/config/GalacticGreg \
                $out/config/HungerOverhaul \
                $out/config/IguanaTinkerTweaks \
                $out/config/NEI \
                $out/config/RTG \
                $out/config/SuperTiC \
                $out/config/WitcheryExtras \
                $out/config/betterquesting \
                $out/config/biomesoplenty \
                $out/config/bugtorch \
                $out/config/buildcraft \
                "$out/config/cofh/core" \
                $out/config/endercore \
                $out/config/enderio \
                $out/config/enderzoo \
                $out/config/etfuturum \
                $out/config/forestry/gamemodes \
                $out/config/kubatech \
                $out/config/lootgames \
                $out/config/mobsinfo \
                $out/config/railcraft \
                $out/config/roguelike_dungeons \
                $out/config/salisarcana
              touch $out/lwjgl3ify-forgePatches.jar
            '';

          # Stub JVM — avoids pulling in a real JDK
          programs.gtnh.minecraft.instance-options.jvmPackage =
            pkgs.writeShellScriptBin "java" "exec sleep infinity";

          # Don't actually launch the server process; preStart still runs as normal
          systemd.services.gtnh.script = lib.mkForce "echo 'server start skipped in test'";
        };

        testScript = ''
          machine.wait_for_unit("multi-user.target")

          # User and group are created during system activation
          machine.succeed("id gtnh-user")
          machine.succeed("getent group gtnh")

          # Firewall ports are open (defaults: server/query 25565, rcon 25575)
          machine.succeed("nft list ruleset | grep 25565")
          machine.succeed("nft list ruleset | grep 25575")

          # Service unit is present and correctly defined
          machine.succeed("systemctl cat gtnh.service")

          # Start the service — this runs preStart (symlinks pack + renders configs)
          machine.succeed("systemctl start gtnh.service")

          # eula.txt should be a symlink created by preStart
          machine.succeed("test -L /var/lib/gtnh/eula.txt")

          # server.properties should be a regular file (copied, not symlinked)
          machine.succeed("test -f /var/lib/gtnh/server.properties")
          machine.succeed("test ! -L /var/lib/gtnh/server.properties")

          # Spot-check a rendered config symlink
          machine.succeed("test -L /var/lib/gtnh/config/forge.cfg")
        '';
      };
    };
  };
}
