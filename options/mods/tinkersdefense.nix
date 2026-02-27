{lib, ...}: {
  tinkersdefense = lib.mkOption {
    description = "tinkersdefense configuration (./config/tinkersdefense.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/tinkersdefense.cfg";
        readOnly = true;
        };
        kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
        };
        "armor addon" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Should the armor addon be enabled?" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "null [default: true]";
              };
            };
          };
        };
        "armor modifier configs" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Absorbtion ID" = lib.mkOption {
                type = lib.types.int;
                default = 215;
                description = "null [range: 18 ~ 2147483647, default: 215]";
              };
              "Anti Blindness ID" = lib.mkOption {
                type = lib.types.int;
                default = 211;
                description = "null [range: 18 ~ 2147483647, default: 211]";
              };
              "Blast Protection ID" = lib.mkOption {
                type = lib.types.int;
                default = 202;
                description = "null [range: 18 ~ 2147483647, default: 202]";
              };
              "Depthstrider ID" = lib.mkOption {
                type = lib.types.int;
                default = 208;
                description = "null [range: 18 ~ 2147483647, default: 208]";
              };
              "Dodge ID" = lib.mkOption {
                type = lib.types.int;
                default = 213;
                description = "null [range: 18 ~ 2147483647, default: 213]";
              };
              "Featherfall ID" = lib.mkOption {
                type = lib.types.int;
                default = 204;
                description = "null [range: 18 ~ 2147483647, default: 204]";
              };
              "Fire Protection ID" = lib.mkOption {
                type = lib.types.int;
                default = 201;
                description = "null [range: 18 ~ 2147483647, default: 201]";
              };
              "Firewalker ID" = lib.mkOption {
                type = lib.types.int;
                default = 207;
                description = "null [range: 18 ~ 2147483647, default: 207]";
              };
              "Frostwalker ID" = lib.mkOption {
                type = lib.types.int;
                default = 206;
                description = "null [range: 18 ~ 2147483647, default: 206]";
              };
              "Glowstep ID" = lib.mkOption {
                type = lib.types.int;
                default = 205;
                description = "null [range: 18 ~ 2147483647, default: 205]";
              };
              "High Step ID" = lib.mkOption {
                type = lib.types.int;
                default = 218;
                description = "null [range: 18 ~ 2147483647, default: 218]";
              };
              "Jump Boost ID" = lib.mkOption {
                type = lib.types.int;
                default = 216;
                description = "null [range: 18 ~ 2147483647, default: 216]";
              };
              "Knockback Resistance ID" = lib.mkOption {
                type = lib.types.int;
                default = 219;
                description = "null [range: 18 ~ 2147483647, default: 219]";
              };
              "Nightvision ID" = lib.mkOption {
                type = lib.types.int;
                default = 210;
                description = "null [range: 18 ~ 2147483647, default: 210]";
              };
              "Projectile Protection ID" = lib.mkOption {
                type = lib.types.int;
                default = 203;
                description = "null [range: 18 ~ 2147483647, default: 203]";
              };
              "Protection ID" = lib.mkOption {
                type = lib.types.int;
                default = 40;
                description = "null [range: 18 ~ 2147483647, default: 200]";
              };
              "Pumpkin ID" = lib.mkOption {
                type = lib.types.int;
                default = 212;
                description = "null [range: 18 ~ 2147483647, default: 212]";
              };
              "Rebreather ID" = lib.mkOption {
                type = lib.types.int;
                default = 209;
                description = "null [range: 18 ~ 2147483647, default: 209]";
              };
              "Speed ID" = lib.mkOption {
                type = lib.types.int;
                default = 217;
                description = "null [range: 18 ~ 2147483647, default: 217]";
              };
              "Thorns ID" = lib.mkOption {
                type = lib.types.int;
                default = 214;
                description = "null [range: 18 ~ 2147483647, default: 214]";
              };
            };
          };
        };
        "bloodmagic addon" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Blood Oath Modifier ID" = lib.mkOption {
                type = lib.types.int;
                default = 230;
                description = "null [range: 18 ~ 2147483647, default: 230]";
              };
              "Divination Modifier ID" = lib.mkOption {
                type = lib.types.int;
                default = 228;
                description = "null [range: 18 ~ 2147483647, default: 228]";
              };
              "Scabbing Modifier ID" = lib.mkOption {
                type = lib.types.int;
                default = 231;
                description = "null [range: 18 ~ 2147483647, default: 231]";
              };
              "Supping Modifier ID" = lib.mkOption {
                type = lib.types.int;
                default = 229;
                description = "null [range: 18 ~ 2147483647, default: 229]";
              };
            };
          };
        };
        "botania addon" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Corpse Drinker Ivy Modifier ID" = lib.mkOption {
                type = lib.types.int;
                default = 60;
                description = "null [range: 18 ~ 2147483647, default: 220]";
              };
              "Elementium Core Modifier ID" = lib.mkOption {
                type = lib.types.int;
                default = 223;
                description = "null [range: 18 ~ 2147483647, default: 223]";
              };
              "Enable Botania Addon" = lib.mkOption {
                type = lib.types.bool;
                default = true;
              };
              "Mana Embroidery Modifier ID" = lib.mkOption {
                type = lib.types.int;
                default = 224;
                description = "null [range: 18 ~ 2147483647, default: 224]";
              };
              "Mana Repair Modifier ID" = lib.mkOption {
                type = lib.types.int;
                default = 221;
                description = "null [range: 18 ~ 2147483647, default: 221]";
              };
              "Terra Core Modifier ID" = lib.mkOption {
                type = lib.types.int;
                default = 222;
                description = "null [range: 18 ~ 2147483647, default: 222]";
              };
            };
          };
        };
        "debug mode" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Should debug mode be enabled?" = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "null [default: false]";
              };
            };
          };
        };
        "general settings" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Should Transparent Textures be enabled?" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "May help fps if disabled [default: true]";
              };
              "Should the moss recipe be enabled?" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "null [default: true]";
              };
              "Should the moss recipe be hard?" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "null [default: true]";
              };
            };
          };
        };
        "highest material id" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Material Index" = lib.mkOption {
                type = lib.types.int;
                default = 206;
                description = "TDefense - 206 MFR - 1001 ExtraTIC - 1024 [range: 30 ~ 2147483647, default: 206]";
              };
            };
          };
        };
        integration = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Enable BloodMagic Addon" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Requires BloodMagic to use [default: true]";
              };
              "Enable Botania Addon" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              "Enable Mine and Blade Addon" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "[default: true]";
              };
              "Enable Thaumcraft Addon" = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Requires Thaumcraft to use [default: true]";
              };
            };
          };
        };
        "material configs" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Aeonsteel Material ID" = lib.mkOption {
                type = lib.types.int;
                default = 201;
                description = "null [range: 30 ~ 2147483647, default: 201]";
              };
              "Dogbearium Material ID" = lib.mkOption {
                type = lib.types.int;
                default = 203;
                description = "null [range: 30 ~ 2147483647, default: 203]";
              };
              "GreenMint Material ID" = lib.mkOption {
                type = lib.types.int;
                default = 205;
                description = "null [range: 30 ~ 2147483647, default: 205]";
              };
              "QueensGold Material ID" = lib.mkOption {
                type = lib.types.int;
                default = 202;
                description = "null [range: 30 ~ 2147483647, default: 202]";
              };
              "RedMint Material ID" = lib.mkOption {
                type = lib.types.int;
                default = 204;
                description = "null [range: 30 ~ 2147483647, default: 204]";
              };
            };
          };
        };
        "material index" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Highest material ID - TDefense - 206 MFR - 1001 ExtraTIC - 1024" = lib.mkOption {
                type = lib.types.int;
                default = 206;
              };
            };
          };
        };
        "modifier configs" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Crest of Feathers ID" = lib.mkOption {
                type = lib.types.int;
                default = 19;
              };
              "Crest of Legends ID" = lib.mkOption {
                type = lib.types.int;
                default = 21;
              };
              "Crest of Mirrors ID" = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
              "Daze ID" = lib.mkOption {
                type = lib.types.int;
                default = 18;
                description = "null [range: 18 ~ 2147483647, default: 18]";
              };
              "Fortune for Shears ID" = lib.mkOption {
                type = lib.types.int;
                default = 22;
                description = "null [range: 18 ~ 2147483647, default: 22]";
              };
              "Rainbow ID" = lib.mkOption {
                type = lib.types.int;
                default = 20;
                description = "null [range: 18 ~ 2147483647, default: 20]";
              };
              "Soulbound ID" = lib.mkOption {
                type = lib.types.int;
                default = 19;
                description = "null [range: 18 ~ 2147483647, default: 19]";
              };
              "Soulstone Steve ID" = lib.mkOption {
                type = lib.types.int;
                default = 199;
                description = "null [range: 18 ~ 2147483647, default: 199]";
              };
              "XPBoost ID" = lib.mkOption {
                type = lib.types.int;
                default = 21;
                description = "null [range: 18 ~ 2147483647, default: 21]";
              };
            };
          };
        };
        "shield modifier configs" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Crest of Blades (black) ID" = lib.mkOption {
                type = lib.types.int;
                default = 71;
                description = "null [range: 18 ~ 2147483647, default: 71]";
              };
              "Crest of Blades (blue) ID" = lib.mkOption {
                type = lib.types.int;
                default = 75;
                description = "null [range: 18 ~ 2147483647, default: 75]";
              };
              "Crest of Blades (brown) ID" = lib.mkOption {
                type = lib.types.int;
                default = 74;
                description = "null [range: 18 ~ 2147483647, default: 74]";
              };
              "Crest of Blades (cyan) ID" = lib.mkOption {
                type = lib.types.int;
                default = 77;
                description = "null [range: 18 ~ 2147483647, default: 77]";
              };
              "Crest of Blades (gray) ID" = lib.mkOption {
                type = lib.types.int;
                default = 79;
                description = "null [range: 18 ~ 2147483647, default: 79]";
              };
              "Crest of Blades (green) ID" = lib.mkOption {
                type = lib.types.int;
                default = 73;
                description = "null [range: 18 ~ 2147483647, default: 73]";
              };
              "Crest of Blades (lightblue) ID" = lib.mkOption {
                type = lib.types.int;
                default = 83;
                description = "null [range: 18 ~ 2147483647, default: 83]";
              };
              "Crest of Blades (lightgray) ID" = lib.mkOption {
                type = lib.types.int;
                default = 78;
                description = "null [range: 18 ~ 2147483647, default: 78]";
              };
              "Crest of Blades (lime) ID" = lib.mkOption {
                type = lib.types.int;
                default = 81;
                description = "null [range: 18 ~ 2147483647, default: 81]";
              };
              "Crest of Blades (magenta) ID" = lib.mkOption {
                type = lib.types.int;
                default = 84;
                description = "null [range: 18 ~ 2147483647, default: 84]";
              };
              "Crest of Blades (orange) ID" = lib.mkOption {
                type = lib.types.int;
                default = 85;
                description = "null [range: 18 ~ 2147483647, default: 85]";
              };
              "Crest of Blades (pink) ID" = lib.mkOption {
                type = lib.types.int;
                default = 80;
                description = "null [range: 18 ~ 2147483647, default: 80]";
              };
              "Crest of Blades (purple) ID" = lib.mkOption {
                type = lib.types.int;
                default = 76;
                description = "null [range: 18 ~ 2147483647, default: 76]";
              };
              "Crest of Blades (red) ID" = lib.mkOption {
                type = lib.types.int;
                default = 72;
                description = "null [range: 18 ~ 2147483647, default: 72]";
              };
              "Crest of Blades (white) ID" = lib.mkOption {
                type = lib.types.int;
                default = 86;
                description = "null [range: 18 ~ 2147483647, default: 86]";
              };
              "Crest of Blades (yellow) ID" = lib.mkOption {
                type = lib.types.int;
                default = 82;
                description = "null [range: 18 ~ 2147483647, default: 82]";
              };
              "Crest of Feathers (black) ID" = lib.mkOption {
                type = lib.types.int;
                default = 23;
                description = "null [range: 18 ~ 2147483647, default: 23]";
              };
              "Crest of Feathers (blue) ID" = lib.mkOption {
                type = lib.types.int;
                default = 27;
                description = "null [range: 18 ~ 2147483647, default: 27]";
              };
              "Crest of Feathers (brown) ID" = lib.mkOption {
                type = lib.types.int;
                default = 26;
                description = "null [range: 18 ~ 2147483647, default: 26]";
              };
              "Crest of Feathers (cyan) ID" = lib.mkOption {
                type = lib.types.int;
                default = 29;
                description = "null [range: 18 ~ 2147483647, default: 29]";
              };
              "Crest of Feathers (gray) ID" = lib.mkOption {
                type = lib.types.int;
                default = 31;
                description = "null [range: 18 ~ 2147483647, default: 31]";
              };
              "Crest of Feathers (green) ID" = lib.mkOption {
                type = lib.types.int;
                default = 25;
                description = "null [range: 18 ~ 2147483647, default: 25]";
              };
              "Crest of Feathers (lightblue) ID" = lib.mkOption {
                type = lib.types.int;
                default = 35;
                description = "null [range: 18 ~ 2147483647, default: 35]";
              };
              "Crest of Feathers (lightgray) ID" = lib.mkOption {
                type = lib.types.int;
                default = 30;
                description = "null [range: 18 ~ 2147483647, default: 30]";
              };
              "Crest of Feathers (lime) ID" = lib.mkOption {
                type = lib.types.int;
                default = 33;
                description = "null [range: 18 ~ 2147483647, default: 33]";
              };
              "Crest of Feathers (magenta) ID" = lib.mkOption {
                type = lib.types.int;
                default = 36;
                description = "null [range: 18 ~ 2147483647, default: 36]";
              };
              "Crest of Feathers (orange) ID" = lib.mkOption {
                type = lib.types.int;
                default = 37;
                description = "null [range: 18 ~ 2147483647, default: 37]";
              };
              "Crest of Feathers (pink) ID" = lib.mkOption {
                type = lib.types.int;
                default = 32;
                description = "null [range: 18 ~ 2147483647, default: 32]";
              };
              "Crest of Feathers (purple) ID" = lib.mkOption {
                type = lib.types.int;
                default = 28;
                description = "null [range: 18 ~ 2147483647, default: 28]";
              };
              "Crest of Feathers (red) ID" = lib.mkOption {
                type = lib.types.int;
                default = 24;
                description = "null [range: 18 ~ 2147483647, default: 24]";
              };
              "Crest of Feathers (white) ID" = lib.mkOption {
                type = lib.types.int;
                default = 38;
                description = "null [range: 18 ~ 2147483647, default: 38]";
              };
              "Crest of Feathers (yellow) ID" = lib.mkOption {
                type = lib.types.int;
                default = 34;
                description = "null [range: 18 ~ 2147483647, default: 34]";
              };
              "Crest of Gluttony (black) ID" = lib.mkOption {
                type = lib.types.int;
                default = 87;
                description = "null [range: 18 ~ 2147483647, default: 87]";
              };
              "Crest of Gluttony (blue) ID" = lib.mkOption {
                type = lib.types.int;
                default = 91;
                description = "null [range: 18 ~ 2147483647, default: 91]";
              };
              "Crest of Gluttony (brown) ID" = lib.mkOption {
                type = lib.types.int;
                default = 90;
                description = "null [range: 18 ~ 2147483647, default: 90]";
              };
              "Crest of Gluttony (cyan) ID" = lib.mkOption {
                type = lib.types.int;
                default = 93;
                description = "null [range: 18 ~ 2147483647, default: 93]";
              };
              "Crest of Gluttony (gray) ID" = lib.mkOption {
                type = lib.types.int;
                default = 95;
                description = "null [range: 18 ~ 2147483647, default: 95]";
              };
              "Crest of Gluttony (green) ID" = lib.mkOption {
                type = lib.types.int;
                default = 89;
                description = "null [range: 18 ~ 2147483647, default: 89]";
              };
              "Crest of Gluttony (lightblue) ID" = lib.mkOption {
                type = lib.types.int;
                default = 99;
                description = "null [range: 18 ~ 2147483647, default: 99]";
              };
              "Crest of Gluttony (lightgray) ID" = lib.mkOption {
                type = lib.types.int;
                default = 94;
                description = "null [range: 18 ~ 2147483647, default: 94]";
              };
              "Crest of Gluttony (lime) ID" = lib.mkOption {
                type = lib.types.int;
                default = 97;
                description = "null [range: 18 ~ 2147483647, default: 97]";
              };
              "Crest of Gluttony (magenta) ID" = lib.mkOption {
                type = lib.types.int;
                default = 100;
                description = "null [range: 18 ~ 2147483647, default: 100]";
              };
              "Crest of Gluttony (orange) ID" = lib.mkOption {
                type = lib.types.int;
                default = 101;
                description = "null [range: 18 ~ 2147483647, default: 101]";
              };
              "Crest of Gluttony (pink) ID" = lib.mkOption {
                type = lib.types.int;
                default = 96;
                description = "null [range: 18 ~ 2147483647, default: 96]";
              };
              "Crest of Gluttony (purple) ID" = lib.mkOption {
                type = lib.types.int;
                default = 92;
                description = "null [range: 18 ~ 2147483647, default: 92]";
              };
              "Crest of Gluttony (red) ID" = lib.mkOption {
                type = lib.types.int;
                default = 88;
                description = "null [range: 18 ~ 2147483647, default: 88]";
              };
              "Crest of Gluttony (white) ID" = lib.mkOption {
                type = lib.types.int;
                default = 102;
                description = "null [range: 18 ~ 2147483647, default: 102]";
              };
              "Crest of Gluttony (yellow) ID" = lib.mkOption {
                type = lib.types.int;
                default = 98;
                description = "null [range: 18 ~ 2147483647, default: 98]";
              };
              "Crest of Legends (black) ID" = lib.mkOption {
                type = lib.types.int;
                default = 55;
                description = "null [range: 18 ~ 2147483647, default: 55]";
              };
              "Crest of Legends (blue) ID" = lib.mkOption {
                type = lib.types.int;
                default = 59;
                description = "null [range: 18 ~ 2147483647, default: 59]";
              };
              "Crest of Legends (brown) ID" = lib.mkOption {
                type = lib.types.int;
                default = 58;
                description = "null [range: 18 ~ 2147483647, default: 58]";
              };
              "Crest of Legends (cyan) ID" = lib.mkOption {
                type = lib.types.int;
                default = 61;
                description = "null [range: 18 ~ 2147483647, default: 61]";
              };
              "Crest of Legends (gray) ID" = lib.mkOption {
                type = lib.types.int;
                default = 63;
                description = "null [range: 18 ~ 2147483647, default: 63]";
              };
              "Crest of Legends (green) ID" = lib.mkOption {
                type = lib.types.int;
                default = 57;
                description = "null [range: 18 ~ 2147483647, default: 57]";
              };
              "Crest of Legends (lightblue) ID" = lib.mkOption {
                type = lib.types.int;
                default = 67;
                description = "null [range: 18 ~ 2147483647, default: 67]";
              };
              "Crest of Legends (lightgray) ID" = lib.mkOption {
                type = lib.types.int;
                default = 62;
                description = "null [range: 18 ~ 2147483647, default: 62]";
              };
              "Crest of Legends (lime) ID" = lib.mkOption {
                type = lib.types.int;
                default = 65;
                description = "null [range: 18 ~ 2147483647, default: 65]";
              };
              "Crest of Legends (magenta) ID" = lib.mkOption {
                type = lib.types.int;
                default = 68;
                description = "null [range: 18 ~ 2147483647, default: 68]";
              };
              "Crest of Legends (orange) ID" = lib.mkOption {
                type = lib.types.int;
                default = 69;
                description = "null [range: 18 ~ 2147483647, default: 69]";
              };
              "Crest of Legends (pink) ID" = lib.mkOption {
                type = lib.types.int;
                default = 64;
                description = "null [range: 18 ~ 2147483647, default: 64]";
              };
              "Crest of Legends (purple) ID" = lib.mkOption {
                type = lib.types.int;
                default = 60;
                description = "null [range: 18 ~ 2147483647, default: 60]";
              };
              "Crest of Legends (red) ID" = lib.mkOption {
                type = lib.types.int;
                default = 56;
                description = "null [range: 18 ~ 2147483647, default: 56]";
              };
              "Crest of Legends (white) ID" = lib.mkOption {
                type = lib.types.int;
                default = 70;
                description = "null [range: 18 ~ 2147483647, default: 70]";
              };
              "Crest of Legends (yellow) ID" = lib.mkOption {
                type = lib.types.int;
                default = 66;
                description = "null [range: 18 ~ 2147483647, default: 66]";
              };
              "Crest of Light (black) ID" = lib.mkOption {
                type = lib.types.int;
                default = 183;
                description = "null [range: 18 ~ 2147483647, default: 183]";
              };
              "Crest of Light (blue) ID" = lib.mkOption {
                type = lib.types.int;
                default = 187;
                description = "null [range: 18 ~ 2147483647, default: 187]";
              };
              "Crest of Light (brown) ID" = lib.mkOption {
                type = lib.types.int;
                default = 186;
                description = "null [range: 18 ~ 2147483647, default: 186]";
              };
              "Crest of Light (cyan) ID" = lib.mkOption {
                type = lib.types.int;
                default = 189;
                description = "null [range: 18 ~ 2147483647, default: 189]";
              };
              "Crest of Light (gray) ID" = lib.mkOption {
                type = lib.types.int;
                default = 191;
                description = "null [range: 18 ~ 2147483647, default: 191]";
              };
              "Crest of Light (green) ID" = lib.mkOption {
                type = lib.types.int;
                default = 185;
                description = "null [range: 18 ~ 2147483647, default: 185]";
              };
              "Crest of Light (lightblue) ID" = lib.mkOption {
                type = lib.types.int;
                default = 195;
                description = "null [range: 18 ~ 2147483647, default: 195]";
              };
              "Crest of Light (lightgray) ID" = lib.mkOption {
                type = lib.types.int;
                default = 190;
                description = "null [range: 18 ~ 2147483647, default: 190]";
              };
              "Crest of Light (lime) ID" = lib.mkOption {
                type = lib.types.int;
                default = 193;
                description = "null [range: 18 ~ 2147483647, default: 193]";
              };
              "Crest of Light (magenta) ID" = lib.mkOption {
                type = lib.types.int;
                default = 196;
                description = "null [range: 18 ~ 2147483647, default: 196]";
              };
              "Crest of Light (orange) ID" = lib.mkOption {
                type = lib.types.int;
                default = 197;
                description = "null [range: 18 ~ 2147483647, default: 197]";
              };
              "Crest of Light (pink) ID" = lib.mkOption {
                type = lib.types.int;
                default = 192;
                description = "null [range: 18 ~ 2147483647, default: 192]";
              };
              "Crest of Light (purple) ID" = lib.mkOption {
                type = lib.types.int;
                default = 188;
                description = "null [range: 18 ~ 2147483647, default: 188]";
              };
              "Crest of Light (red) ID" = lib.mkOption {
                type = lib.types.int;
                default = 184;
                description = "null [range: 18 ~ 2147483647, default: 184]";
              };
              "Crest of Light (white) ID" = lib.mkOption {
                type = lib.types.int;
                default = 198;
                description = "null [range: 18 ~ 2147483647, default: 198]";
              };
              "Crest of Light (yellow) ID" = lib.mkOption {
                type = lib.types.int;
                default = 194;
                description = "null [range: 18 ~ 2147483647, default: 194]";
              };
              "Crest of Mirrors (black) ID" = lib.mkOption {
                type = lib.types.int;
                default = 39;
                description = "null [range: 18 ~ 2147483647, default: 39]";
              };
              "Crest of Mirrors (blue) ID" = lib.mkOption {
                type = lib.types.int;
                default = 43;
                description = "null [range: 18 ~ 2147483647, default: 43]";
              };
              "Crest of Mirrors (brown) ID" = lib.mkOption {
                type = lib.types.int;
                default = 42;
                description = "null [range: 18 ~ 2147483647, default: 42]";
              };
              "Crest of Mirrors (cyan) ID" = lib.mkOption {
                type = lib.types.int;
                default = 45;
                description = "null [range: 18 ~ 2147483647, default: 45]";
              };
              "Crest of Mirrors (gray) ID" = lib.mkOption {
                type = lib.types.int;
                default = 47;
                description = "null [range: 18 ~ 2147483647, default: 47]";
              };
              "Crest of Mirrors (green) ID" = lib.mkOption {
                type = lib.types.int;
                default = 41;
                description = "null [range: 18 ~ 2147483647, default: 41]";
              };
              "Crest of Mirrors (lightblue) ID" = lib.mkOption {
                type = lib.types.int;
                default = 51;
                description = "null [range: 18 ~ 2147483647, default: 51]";
              };
              "Crest of Mirrors (lightgray) ID" = lib.mkOption {
                type = lib.types.int;
                default = 46;
                description = "null [range: 18 ~ 2147483647, default: 46]";
              };
              "Crest of Mirrors (lime) ID" = lib.mkOption {
                type = lib.types.int;
                default = 49;
                description = "null [range: 18 ~ 2147483647, default: 49]";
              };
              "Crest of Mirrors (magenta) ID" = lib.mkOption {
                type = lib.types.int;
                default = 52;
                description = "null [range: 18 ~ 2147483647, default: 52]";
              };
              "Crest of Mirrors (orange) ID" = lib.mkOption {
                type = lib.types.int;
                default = 53;
                description = "null [range: 18 ~ 2147483647, default: 53]";
              };
              "Crest of Mirrors (pink) ID" = lib.mkOption {
                type = lib.types.int;
                default = 48;
                description = "null [range: 18 ~ 2147483647, default: 48]";
              };
              "Crest of Mirrors (purple) ID" = lib.mkOption {
                type = lib.types.int;
                default = 44;
                description = "null [range: 18 ~ 2147483647, default: 44]";
              };
              "Crest of Mirrors (red) ID" = lib.mkOption {
                type = lib.types.int;
                default = 40;
                description = "null [range: 18 ~ 2147483647, default: 40]";
              };
              "Crest of Mirrors (white) ID" = lib.mkOption {
                type = lib.types.int;
                default = 54;
                description = "null [range: 18 ~ 2147483647, default: 54]";
              };
              "Crest of Mirrors (yellow) ID" = lib.mkOption {
                type = lib.types.int;
                default = 50;
                description = "null [range: 18 ~ 2147483647, default: 50]";
              };
              "Crest of Pitch (black) ID" = lib.mkOption {
                type = lib.types.int;
                default = 103;
                description = "null [range: 18 ~ 2147483647, default: 103]";
              };
              "Crest of Pitch (blue) ID" = lib.mkOption {
                type = lib.types.int;
                default = 107;
                description = "null [range: 18 ~ 2147483647, default: 107]";
              };
              "Crest of Pitch (brown) ID" = lib.mkOption {
                type = lib.types.int;
                default = 106;
                description = "null [range: 18 ~ 2147483647, default: 106]";
              };
              "Crest of Pitch (cyan) ID" = lib.mkOption {
                type = lib.types.int;
                default = 109;
                description = "null [range: 18 ~ 2147483647, default: 109]";
              };
              "Crest of Pitch (gray) ID" = lib.mkOption {
                type = lib.types.int;
                default = 111;
                description = "null [range: 18 ~ 2147483647, default: 111]";
              };
              "Crest of Pitch (green) ID" = lib.mkOption {
                type = lib.types.int;
                default = 105;
                description = "null [range: 18 ~ 2147483647, default: 105]";
              };
              "Crest of Pitch (lightblue) ID" = lib.mkOption {
                type = lib.types.int;
                default = 115;
                description = "null [range: 18 ~ 2147483647, default: 115]";
              };
              "Crest of Pitch (lightgray) ID" = lib.mkOption {
                type = lib.types.int;
                default = 110;
                description = "null [range: 18 ~ 2147483647, default: 110]";
              };
              "Crest of Pitch (lime) ID" = lib.mkOption {
                type = lib.types.int;
                default = 113;
                description = "null [range: 18 ~ 2147483647, default: 113]";
              };
              "Crest of Pitch (magenta) ID" = lib.mkOption {
                type = lib.types.int;
                default = 116;
                description = "null [range: 18 ~ 2147483647, default: 116]";
              };
              "Crest of Pitch (orange) ID" = lib.mkOption {
                type = lib.types.int;
                default = 117;
                description = "null [range: 18 ~ 2147483647, default: 117]";
              };
              "Crest of Pitch (pink) ID" = lib.mkOption {
                type = lib.types.int;
                default = 112;
                description = "null [range: 18 ~ 2147483647, default: 112]";
              };
              "Crest of Pitch (purple) ID" = lib.mkOption {
                type = lib.types.int;
                default = 108;
                description = "null [range: 18 ~ 2147483647, default: 108]";
              };
              "Crest of Pitch (red) ID" = lib.mkOption {
                type = lib.types.int;
                default = 104;
                description = "null [range: 18 ~ 2147483647, default: 104]";
              };
              "Crest of Pitch (white) ID" = lib.mkOption {
                type = lib.types.int;
                default = 118;
                description = "null [range: 18 ~ 2147483647, default: 118]";
              };
              "Crest of Pitch (yellow) ID" = lib.mkOption {
                type = lib.types.int;
                default = 114;
                description = "null [range: 18 ~ 2147483647, default: 114]";
              };
              "Crest of Retribution (black) ID" = lib.mkOption {
                type = lib.types.int;
                default = 167;
                description = "null [range: 18 ~ 2147483647, default: 167]";
              };
              "Crest of Retribution (blue) ID" = lib.mkOption {
                type = lib.types.int;
                default = 171;
                description = "null [range: 18 ~ 2147483647, default: 171]";
              };
              "Crest of Retribution (brown) ID" = lib.mkOption {
                type = lib.types.int;
                default = 170;
                description = "null [range: 18 ~ 2147483647, default: 170]";
              };
              "Crest of Retribution (cyan) ID" = lib.mkOption {
                type = lib.types.int;
                default = 173;
                description = "null [range: 18 ~ 2147483647, default: 173]";
              };
              "Crest of Retribution (gray) ID" = lib.mkOption {
                type = lib.types.int;
                default = 175;
                description = "null [range: 18 ~ 2147483647, default: 175]";
              };
              "Crest of Retribution (green) ID" = lib.mkOption {
                type = lib.types.int;
                default = 169;
                description = "null [range: 18 ~ 2147483647, default: 169]";
              };
              "Crest of Retribution (lightblue) ID" = lib.mkOption {
                type = lib.types.int;
                default = 179;
                description = "null [range: 18 ~ 2147483647, default: 179]";
              };
              "Crest of Retribution (lightgray) ID" = lib.mkOption {
                type = lib.types.int;
                default = 174;
                description = "null [range: 18 ~ 2147483647, default: 174]";
              };
              "Crest of Retribution (lime) ID" = lib.mkOption {
                type = lib.types.int;
                default = 177;
                description = "null [range: 18 ~ 2147483647, default: 177]";
              };
              "Crest of Retribution (magenta) ID" = lib.mkOption {
                type = lib.types.int;
                default = 180;
                description = "null [range: 18 ~ 2147483647, default: 180]";
              };
              "Crest of Retribution (orange) ID" = lib.mkOption {
                type = lib.types.int;
                default = 181;
                description = "null [range: 18 ~ 2147483647, default: 181]";
              };
              "Crest of Retribution (pink) ID" = lib.mkOption {
                type = lib.types.int;
                default = 176;
                description = "null [range: 18 ~ 2147483647, default: 176]";
              };
              "Crest of Retribution (purple) ID" = lib.mkOption {
                type = lib.types.int;
                default = 172;
                description = "null [range: 18 ~ 2147483647, default: 172]";
              };
              "Crest of Retribution (red) ID" = lib.mkOption {
                type = lib.types.int;
                default = 168;
                description = "null [range: 18 ~ 2147483647, default: 168]";
              };
              "Crest of Retribution (white) ID" = lib.mkOption {
                type = lib.types.int;
                default = 182;
                description = "null [range: 18 ~ 2147483647, default: 182]";
              };
              "Crest of Retribution (yellow) ID" = lib.mkOption {
                type = lib.types.int;
                default = 178;
                description = "null [range: 18 ~ 2147483647, default: 178]";
              };
              "Crest of Sanguisuga (black) ID" = lib.mkOption {
                type = lib.types.int;
                default = 135;
                description = "null [range: 18 ~ 2147483647, default: 135]";
              };
              "Crest of Sanguisuga (blue) ID" = lib.mkOption {
                type = lib.types.int;
                default = 139;
                description = "null [range: 18 ~ 2147483647, default: 139]";
              };
              "Crest of Sanguisuga (brown) ID" = lib.mkOption {
                type = lib.types.int;
                default = 138;
                description = "null [range: 18 ~ 2147483647, default: 138]";
              };
              "Crest of Sanguisuga (cyan) ID" = lib.mkOption {
                type = lib.types.int;
                default = 141;
                description = "null [range: 18 ~ 2147483647, default: 141]";
              };
              "Crest of Sanguisuga (gray) ID" = lib.mkOption {
                type = lib.types.int;
                default = 143;
                description = "null [range: 18 ~ 2147483647, default: 143]";
              };
              "Crest of Sanguisuga (green) ID" = lib.mkOption {
                type = lib.types.int;
                default = 137;
                description = "null [range: 18 ~ 2147483647, default: 137]";
              };
              "Crest of Sanguisuga (lightblue) ID" = lib.mkOption {
                type = lib.types.int;
                default = 147;
                description = "null [range: 18 ~ 2147483647, default: 147]";
              };
              "Crest of Sanguisuga (lightgray) ID" = lib.mkOption {
                type = lib.types.int;
                default = 142;
                description = "null [range: 18 ~ 2147483647, default: 142]";
              };
              "Crest of Sanguisuga (lime) ID" = lib.mkOption {
                type = lib.types.int;
                default = 145;
                description = "null [range: 18 ~ 2147483647, default: 145]";
              };
              "Crest of Sanguisuga (magenta) ID" = lib.mkOption {
                type = lib.types.int;
                default = 148;
                description = "null [range: 18 ~ 2147483647, default: 148]";
              };
              "Crest of Sanguisuga (orange) ID" = lib.mkOption {
                type = lib.types.int;
                default = 149;
                description = "null [range: 18 ~ 2147483647, default: 149]";
              };
              "Crest of Sanguisuga (pink) ID" = lib.mkOption {
                type = lib.types.int;
                default = 144;
                description = "null [range: 18 ~ 2147483647, default: 144]";
              };
              "Crest of Sanguisuga (purple) ID" = lib.mkOption {
                type = lib.types.int;
                default = 140;
                description = "null [range: 18 ~ 2147483647, default: 140]";
              };
              "Crest of Sanguisuga (red) ID" = lib.mkOption {
                type = lib.types.int;
                default = 136;
                description = "null [range: 18 ~ 2147483647, default: 136]";
              };
              "Crest of Sanguisuga (white) ID" = lib.mkOption {
                type = lib.types.int;
                default = 150;
                description = "null [range: 18 ~ 2147483647, default: 150]";
              };
              "Crest of Sanguisuga (yellow) ID" = lib.mkOption {
                type = lib.types.int;
                default = 146;
                description = "null [range: 18 ~ 2147483647, default: 146]";
              };
              "Crest of Thorns (black) ID" = lib.mkOption {
                type = lib.types.int;
                default = 119;
                description = "null [range: 18 ~ 2147483647, default: 119]";
              };
              "Crest of Thorns (blue) ID" = lib.mkOption {
                type = lib.types.int;
                default = 123;
                description = "null [range: 18 ~ 2147483647, default: 123]";
              };
              "Crest of Thorns (brown) ID" = lib.mkOption {
                type = lib.types.int;
                default = 122;
                description = "null [range: 18 ~ 2147483647, default: 122]";
              };
              "Crest of Thorns (cyan) ID" = lib.mkOption {
                type = lib.types.int;
                default = 125;
                description = "null [range: 18 ~ 2147483647, default: 125]";
              };
              "Crest of Thorns (gray) ID" = lib.mkOption {
                type = lib.types.int;
                default = 127;
                description = "null [range: 18 ~ 2147483647, default: 127]";
              };
              "Crest of Thorns (green) ID" = lib.mkOption {
                type = lib.types.int;
                default = 121;
                description = "null [range: 18 ~ 2147483647, default: 121]";
              };
              "Crest of Thorns (lightblue) ID" = lib.mkOption {
                type = lib.types.int;
                default = 131;
                description = "null [range: 18 ~ 2147483647, default: 131]";
              };
              "Crest of Thorns (lightgray) ID" = lib.mkOption {
                type = lib.types.int;
                default = 126;
                description = "null [range: 18 ~ 2147483647, default: 126]";
              };
              "Crest of Thorns (lime) ID" = lib.mkOption {
                type = lib.types.int;
                default = 129;
                description = "null [range: 18 ~ 2147483647, default: 129]";
              };
              "Crest of Thorns (magenta) ID" = lib.mkOption {
                type = lib.types.int;
                default = 132;
                description = "null [range: 18 ~ 2147483647, default: 132]";
              };
              "Crest of Thorns (orange) ID" = lib.mkOption {
                type = lib.types.int;
                default = 133;
                description = "null [range: 18 ~ 2147483647, default: 133]";
              };
              "Crest of Thorns (pink) ID" = lib.mkOption {
                type = lib.types.int;
                default = 128;
                description = "null [range: 18 ~ 2147483647, default: 128]";
              };
              "Crest of Thorns (purple) ID" = lib.mkOption {
                type = lib.types.int;
                default = 124;
                description = "null [range: 18 ~ 2147483647, default: 124]";
              };
              "Crest of Thorns (red) ID" = lib.mkOption {
                type = lib.types.int;
                default = 120;
                description = "null [range: 18 ~ 2147483647, default: 120]";
              };
              "Crest of Thorns (white) ID" = lib.mkOption {
                type = lib.types.int;
                default = 134;
                description = "null [range: 18 ~ 2147483647, default: 134]";
              };
              "Crest of Thorns (yellow) ID" = lib.mkOption {
                type = lib.types.int;
                default = 130;
                description = "null [range: 18 ~ 2147483647, default: 130]";
              };
              "Crest of Winds (black) ID" = lib.mkOption {
                type = lib.types.int;
                default = 151;
                description = "null [range: 18 ~ 2147483647, default: 151]";
              };
              "Crest of Winds (blue) ID" = lib.mkOption {
                type = lib.types.int;
                default = 155;
                description = "null [range: 18 ~ 2147483647, default: 155]";
              };
              "Crest of Winds (brown) ID" = lib.mkOption {
                type = lib.types.int;
                default = 154;
                description = "null [range: 18 ~ 2147483647, default: 154]";
              };
              "Crest of Winds (cyan) ID" = lib.mkOption {
                type = lib.types.int;
                default = 157;
                description = "null [range: 18 ~ 2147483647, default: 157]";
              };
              "Crest of Winds (gray) ID" = lib.mkOption {
                type = lib.types.int;
                default = 159;
                description = "null [range: 18 ~ 2147483647, default: 159]";
              };
              "Crest of Winds (green) ID" = lib.mkOption {
                type = lib.types.int;
                default = 153;
                description = "null [range: 18 ~ 2147483647, default: 153]";
              };
              "Crest of Winds (lightblue) ID" = lib.mkOption {
                type = lib.types.int;
                default = 163;
                description = "null [range: 18 ~ 2147483647, default: 163]";
              };
              "Crest of Winds (lightgray) ID" = lib.mkOption {
                type = lib.types.int;
                default = 158;
                description = "null [range: 18 ~ 2147483647, default: 158]";
              };
              "Crest of Winds (lime) ID" = lib.mkOption {
                type = lib.types.int;
                default = 161;
                description = "null [range: 18 ~ 2147483647, default: 161]";
              };
              "Crest of Winds (magenta) ID" = lib.mkOption {
                type = lib.types.int;
                default = 164;
                description = "null [range: 18 ~ 2147483647, default: 164]";
              };
              "Crest of Winds (orange) ID" = lib.mkOption {
                type = lib.types.int;
                default = 165;
                description = "null [range: 18 ~ 2147483647, default: 165]";
              };
              "Crest of Winds (pink) ID" = lib.mkOption {
                type = lib.types.int;
                default = 160;
                description = "null [range: 18 ~ 2147483647, default: 160]";
              };
              "Crest of Winds (purple) ID" = lib.mkOption {
                type = lib.types.int;
                default = 156;
                description = "null [range: 18 ~ 2147483647, default: 156]";
              };
              "Crest of Winds (red) ID" = lib.mkOption {
                type = lib.types.int;
                default = 152;
                description = "null [range: 18 ~ 2147483647, default: 152]";
              };
              "Crest of Winds (white) ID" = lib.mkOption {
                type = lib.types.int;
                default = 166;
                description = "null [range: 18 ~ 2147483647, default: 166]";
              };
              "Crest of Winds (yellow) ID" = lib.mkOption {
                type = lib.types.int;
                default = 162;
                description = "null [range: 18 ~ 2147483647, default: 162]";
              };
            };
          };
        };
        "thaumcraft addon" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              "Cap Repair Modifier ID" = lib.mkOption {
                type = lib.types.int;
                default = 227;
                description = "null [range: 18 ~ 2147483647, default: 227]";
              };
              "Revealing Modifier ID" = lib.mkOption {
                type = lib.types.int;
                default = 225;
                description = "null [range: 18 ~ 2147483647, default: 225]";
              };
              "Vis Discount Modifier ID" = lib.mkOption {
                type = lib.types.int;
                default = 226;
                description = "null [range: 18 ~ 2147483647, default: 226]";
              };
            };
          };
        };
      };
    };
  };
}
