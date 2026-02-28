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
        name = "gtnh-service";

        nodes.machine = {lib, ...}: {
          imports = [
            self.nixosModules.gtnh
            self.nixosModules."2.8.4"
          ];

          # Expose gtnh-2.8.4 package via the flake overlay
          nixpkgs.overlays = [self.overlays.default];

          programs.gtnh.enable = true;

          # Lower JVM heap so it fits inside the VM (default 6G would OOM)
          programs.gtnh.minecraft.instance-options.jvmMaxAllocation = "4G";
          programs.gtnh.minecraft.instance-options.jvmInitialAllocation = "4G";

          # Disable the tick watchdog — startup ticks are slow in QEMU and
          # would otherwise trigger a forced shutdown before RCON comes up.
          programs.gtnh.minecraft.server-properties.max-tick-time = -1;

          # Give the VM enough memory and disk for GTNH
          virtualisation.memorySize = 8192;
          virtualisation.diskSize = 20480;
        };

        testScript = {nodes, ...}: let
          cfg = nodes.machine.programs.gtnh.minecraft.server-properties;
          mcrcon = "${pkgs.mcrcon}/bin/mcrcon -H 127.0.0.1 -P ${toString cfg.rcon-port} -p ${cfg.rcon-password}";
        in ''
          machine.wait_for_unit("multi-user.target")

          # User and group are created during system activation
          machine.succeed("id gtnh-user")
          machine.succeed("getent group gtnh")

          # Service unit is present and correctly defined
          machine.succeed("systemctl cat gtnh.service")

          # Start the service — preStart runs, then the server boots
          machine.succeed("systemctl start gtnh.service")

          # Wait for RCON to come up — GTNH takes several minutes to start
          machine.wait_until_succeeds(
            "${mcrcon} list",
            timeout=600
          )

          # Verify the server responds sensibly to a list command
          output = machine.succeed("${mcrcon} list")
          assert "players" in output.lower(), f"Unexpected mcrcon output: {output}"
        '';
      };
    };
  };
}
