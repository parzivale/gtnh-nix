{lib, ...}: {
  defaultserverlist_json = lib.mkOption {
    description = "defaultserverlist_json configuration (./config/defaultserverlist.json)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/defaultserverlist.json";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "json";
        readOnly = true;
        };
        useURL = lib.mkOption {
          type = lib.types.bool;
          default = true;
        };
        allowDeletions = lib.mkOption {
          type = lib.types.bool;
          default = true;
        };
        url = lib.mkOption {
          type = lib.types.str;
          default = "https://raw.githubusercontent.com/GTNewHorizons/GT-New-Horizons-Modpack/master/servers.json";
        };
        servers = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Official GTNH Server 1 EU" = lib.mkOption {
                type = lib.types.str;
                default = "delta.gtnewhorizons.com";
              };
              "Official GTNH Server 2 EU" = lib.mkOption {
                type = lib.types.str;
                default = "epsilon.gtnewhorizons.com";
              };
              "Official GTNH Server 3 EU" = lib.mkOption {
                type = lib.types.str;
                default = "eta.gtnewhorizons.com";
              };
              "Test Server GTNH 4 EU" = lib.mkOption {
                type = lib.types.str;
                default = "zeta.gtnewhorizons.com";
              };
              "APOC Gaming GTNH [US/EU]" = lib.mkOption {
                type = lib.types.str;
                default = "gtnh.apocgaming.org";
              };
              "Prospercraft GTNH Server US" = lib.mkOption {
                type = lib.types.str;
                default = "newhorizonsold.prospercraft.com";
              };
              "StoneLegion.com GTNH (Canada)" = lib.mkOption {
                type = lib.types.str;
                default = "mc.stonelegion.com";
              };
              "MyFTB GTNH German Server" = lib.mkOption {
                type = lib.types.str;
                default = "newhorizons.myftb.de";
              };
              "StoneHuts GTNH EU whitelisted" = lib.mkOption {
                type = lib.types.str;
                default = "gtnh.stonehuts.net";
              };
              "Zvezdolet GTNH Server (RU)" = lib.mkOption {
                type = lib.types.str;
                default = "gtnh.114-7.com";
              };
              "Zvezdolet GTNH 2.0" = lib.mkOption {
                type = lib.types.str;
                default = "gtnh2.114-7.com";
              };
              "Zvezdolet GTNH Hardcore" = lib.mkOption {
                type = lib.types.str;
                default = "gtnh3.114-7.com";
              };
              "Hitechmine.ru  GT New Horizons" = lib.mkOption {
                type = lib.types.str;
                default = "hitechmine.ru";
              };
              "Modded Minecraft Club  (Eu-Asia)" = lib.mkOption {
                type = lib.types.str;
                default = "gtnh.moddedminecraft.club";
              };
              "MMC No TP (Eu+Asia2)" = lib.mkOption {
                type = lib.types.str;
                default = "gtnh-im.moddedminecraft.club";
              };
              "Earthquake GTNH (US West)" = lib.mkOption {
                type = lib.types.str;
                default = "flancat.ddns.net";
              };
              "MineYourMind GTNH (EU)" = lib.mkOption {
                type = lib.types.str;
                default = "horizons.mineyourmind.net";
              };
              "ValhallaMC (EU)" = lib.mkOption {
                type = lib.types.str;
                default = "gtnh.valhallamc.io";
              };
              "Truth of Horizons (EU Paris)" = lib.mkOption {
                type = lib.types.str;
                default = "truthofhorizons.us.to";
              };
              "Iron Fox Nexus (US)" = lib.mkOption {
                type = lib.types.str;
                default = "23.139.82.94";
              };
              "The Hive Challenge Run Public SMP (US)" = lib.mkOption {
                type = lib.types.str;
                default = "publichivesmp.paradiseisland.gg";
              };
            };
          };
        };
        DO_NOT_EDIT_prevDefaultServers = lib.mkOption {
          type = lib.types.listOf lib.types.str;
          default = [ ];
        };
      };
    };
  };
}
