{lib, ...}: {
  BloodArsenal = lib.mkOption {
    description = "BloodArsenal configuration (./config/BloodArsenal.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/BloodArsenal.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        "block settings" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Disable blocks here" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ ];
                description = "Type in the unlocalized name of the block you want disabled here (separate them using ENTER) [default: []]";
              };
            };
          };
        };
        "item settings" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Disable items here" = lib.mkOption {
                type = lib.types.listOf lib.types.str;
                default = [ ];
                description = "Type in the unlocalized name of the item you want disabled (separate them using ENTER) [default: []]";
              };
            };
          };
        };
        "lp settings" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Converts this number to 100LE (from this (SN) to 100 (LE)); Default: 150" = lib.mkOption {
                type = lib.types.int;
                default = 150;
              };
              "Ender Sigil cost (to open the Ender Chest); Default: 200" = lib.mkOption {
                type = lib.types.int;
                default = 400;
              };
              "Ender Sigil cost (to open the Ender Chest); Default: 400" = lib.mkOption {
                type = lib.types.int;
                default = 400;
              };
              "Ender Sigil cost (to teleport (multiplier)); Default: 250" = lib.mkOption {
                type = lib.types.int;
                default = 500;
              };
              "Ender Sigil cost (to teleport (multiplier)); Default: 500" = lib.mkOption {
                type = lib.types.int;
                default = 500;
              };
              "Lightning Sigil cost (multiplier); Default: 1000" = lib.mkOption {
                type = lib.types.int;
                default = 1500;
              };
              "Lightning Sigil cost (multiplier); Default: 1500" = lib.mkOption {
                type = lib.types.int;
                default = 1500;
              };
              "Sigil of Divinity cost; Default: 1000000" = lib.mkOption {
                type = lib.types.int;
                default = 1000000;
              };
              "Sigil of Swimming cost; Default: 150" = lib.mkOption {
                type = lib.types.int;
                default = 250;
              };
              "Sigil of Swimming cost; Default: 250" = lib.mkOption {
                type = lib.types.int;
                default = 250;
              };
            };
          };
        };
        miscellaneous = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Is RED > PURPLE?" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Purple is always better than Red. But I won't tell you how to live your life. Even if it is incorrect.";
              };
              "Is auto-magic version checking allowed?" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Is glass dangerous?" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Breaking glass is dangerous unless you're a wimp";
              };
              "The cake is a lie" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "The cake is a lie";
              };
            };
          };
        };
        "mod settings" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Add [BA] to all of Blood Arsenal's research?" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Baubles integration?" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Forge Multipart Integration?" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Thaumcraft/Forbidden Magic integration?" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable Tinker's Construct integration?" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Enable the Blood Burned Tome from Guide-API?" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "[Tinker's Construct] Material ID for Blood Infused Iron; Default: 251" = lib.mkOption {
                type = lib.types.int;
                default = 251;
              };
              "[Tinker's Construct] Material ID for Blood Infused Wood; Default: 250" = lib.mkOption {
                type = lib.types.int;
                default = 250;
              };
            };
          };
        };
        "potion id" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              Bleeding = lib.mkOption {
                type = lib.types.int;
                default = 121;
              };
              "Soul Burn" = lib.mkOption {
                type = lib.types.int;
                default = 123;
              };
              Swimming = lib.mkOption {
                type = lib.types.int;
                default = 122;
              };
              "Vampiric Aura" = lib.mkOption {
                type = lib.types.int;
                default = 120;
              };
            };
          };
        };
        "ritual blacklist" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Fisherman's Hymn" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Midas Touch" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Ritual of Mob Oppression" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "Ritual of Withering" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              "The Enchantress's Spell" = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
            };
          };
        };
      };
    };
  };
}
