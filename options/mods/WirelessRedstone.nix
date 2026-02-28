{lib, ...}: {
  WirelessRedstone = lib.mkOption {
    description = "WirelessRedstone configuration (./config/WirelessRedstone.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
          type = lib.types.str;
          default = "./config/WirelessRedstone.cfg";
          readOnly = true;
        };
        kind = lib.mkOption {
          type = lib.types.str;
          default = "forge_untyped";
          readOnly = true;
        };
        core = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              boltEffect = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    "damage.entity" = lib.mkOption {
                      type = lib.types.str;
                      default = "5";
                      description = "Damages are in half hearts:If an entity gets knocked into another bolt it may suffer multiple hits";
                    };
                    "damage.player" = lib.mkOption {
                      type = lib.types.str;
                      default = "3";
                    };
                  };
                };
              };
              jammer = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    blockdelay = lib.mkOption {
                      type = lib.types.int;
                      default = 10;
                      description = "Delay in seconds before jamming the first time";
                    };
                    entitydelay = lib.mkOption {
                      type = lib.types.int;
                      default = 5;
                    };
                    entityretry = lib.mkOption {
                      type = lib.types.int;
                      default = 10;
                      description = "Jam an entity again after x seconds";
                    };
                    range = lib.mkOption {
                      type = lib.types.int;
                      default = 10;
                      description = "Range In Blocks";
                    };
                    timeout = lib.mkOption {
                      type = lib.types.int;
                      default = 60;
                      description = "Timeout In Seconds:Applies to both blocks and players";
                    };
                  };
                };
              };
            };
          };
        };
        "addon.sniffer.gui" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "colour.on" = lib.mkOption {
                type = lib.types.str;
                default = "0xffff0000";
                description = "Colours are in 0xAARRGGBB format:Alpha should be FF";
              };
              "colour.off" = lib.mkOption {
                type = lib.types.str;
                default = "0xff700000";
              };
              "colour.jammed" = lib.mkOption {
                type = lib.types.str;
                default = "0xff707070";
              };
              "colour.private.on" = lib.mkOption {
                type = lib.types.str;
                default = "0xff40f000";
              };
              "colour.private.off" = lib.mkOption {
                type = lib.types.str;
                default = "0xff40a000";
              };
              "border.on" = lib.mkOption {
                type = lib.types.str;
                default = "0xffee0000";
              };
              "border.off" = lib.mkOption {
                type = lib.types.str;
                default = "0xff500000";
              };
              "border.jammed" = lib.mkOption {
                type = lib.types.str;
                default = "0xff505050";
              };
              "border.private.on" = lib.mkOption {
                type = lib.types.str;
                default = "0xff20e000";
              };
              "border.private.off" = lib.mkOption {
                type = lib.types.str;
                default = "0xff209000";
              };
            };
          };
        };
        checkUpdates = lib.mkOption {
          type = lib.types.str;
          default = "false";
        };
      };
    };
  };
}
