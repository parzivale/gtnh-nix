{lib, ...}: {
  bartworks_cfg = lib.mkOption {
    description = "bartworks_cfg configuration (./config/bartworks.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
      path = lib.mkOption {
        type = lib.types.str;
        default = "./config/bartworks.cfg";
        readOnly = true;
      };
      kind = lib.mkOption {
        type = lib.types.str;
        default = "forge";
        readOnly = true;
      };
      "asm fixes" = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "PATCHING CRAFTING MANAGER FOR CACHING RECIPES in class: net.minecraft.item.crafting.CraftingManager" = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          "PATCHING THAUMCRAFT WAND PEDESTAL TO PREVENT VIS DUPLICATION in class: thaumcraft.common.tiles.TileWandPedestal" = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          "REMOVING CREATURES FROM LAST MILLENNIUM (EXU) in class: com.rwtema.extrautils.worldgen.endoftime.ChunkProviderEndOfTime" = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          "REMOVING RAIN FROM LAST MILLENNIUM (EXU) in class: com.rwtema.extrautils.worldgen.endoftime.WorldProviderEndOfTime" = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };
          };
        };
      };
      "crossmod interactions" = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "DimID - Ross128b" = lib.mkOption {
            type = lib.types.int;
            default = 64;
            description = "The Dim ID for Ross128b";
          };
          "DimID - Ross128ba" = lib.mkOption {
            type = lib.types.int;
            default = 63;
            description = "The Dim ID for Ross128ba (Ross128b's Moon)";
          };
          "Disable Magical Forest - Ross128b" = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "True disables the magical Forest Biome on Ross for more performance during World generation.";
          };
          "Galacticraft - Activate Ross128 System" = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "If the Ross128 System should be activated, DO NOT CHANGE AFTER WORLD GENERATION";
          };
          LanderType = lib.mkOption {
            type = lib.types.int;
            default = 3;
            description = "1 = Moon Lander, 2 = Landing Balloons, 3 = Asteroid Lander";
          };
          "Rocket Tier - Ross128b" = lib.mkOption {
            type = lib.types.int;
            default = 3;
            description = "The Rocket Tier for Ross128b";
          };
          "Rocket Tier - Ross128ba" = lib.mkOption {
            type = lib.types.int;
            default = 5;
            description = "The Rocket Tier for Ross128a";
          };
          "Ruin Chance - Ross128b" = lib.mkOption {
            type = lib.types.int;
            default = 512;
            description = "Higher Values mean lesser Ruins.";
          };
          };
        };
      };
      multiblocks = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "BioVat Maximum Bonus on Recipes" = lib.mkOption {
            type = lib.types.int;
            default = 1000;
            description = "This are the maximum parallel Operations the BioVat can do, when the output is half full.";
          };
          "DEHP Direct Steam Mode" = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "This switch enables the Direct Steam Mode of the DEHP. If enabled it will take in Waterand output steam. If disabled it will Input IC2Coolant and output hot coolant";
          };
          "Mega Machines Maximum Recipes per Operation" = lib.mkOption {
            type = lib.types.int;
            default = 256;
            description = "This changes the Maximum Recipes per Operation to the specified Valure";
          };
          energyPerLESUCell = lib.mkOption {
            type = lib.types.int;
            default = 20000000;
            description = "This will set Up the Energy per LESU Cell";
          };
          };
        };
      };
      "ross ruin metas" = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "0_Ruin Buffers Tier High Pressure Steam" = lib.mkOption {
            type = lib.types.listOf lib.types.int;
            default = [ 5133 5123 ];
          };
          "0_Ruin Cables Tier High Pressure Steam" = lib.mkOption {
            type = lib.types.listOf lib.types.int;
            default = [ 5133 5123 ];
          };
          "0_Ruin Generators Tier High Pressure Steam" = lib.mkOption {
            type = lib.types.listOf lib.types.int;
            default = [ 100 101 102 105 ];
          };
          "0_Ruin Machines Tier High Pressure Steam" = lib.mkOption {
            type = lib.types.listOf lib.types.int;
            default = [ 103 104 106 107 109 110 112 113 115 116 118 119 ];
          };
          "1_Ruin Buffers Tier Low Voltage" = lib.mkOption {
            type = lib.types.listOf lib.types.int;
            default = [ 161 171 181 191 ];
          };
          "1_Ruin Cables Tier Low Voltage" = lib.mkOption {
            type = lib.types.listOf lib.types.int;
            default = [ 1210 1230 1250 1270 1290 ];
          };
          "1_Ruin Generators Tier Low Voltage" = lib.mkOption {
            type = lib.types.listOf lib.types.int;
            default = [ 1110 1115 1120 1127 ];
          };
          "1_Ruin Machines Tier Low Voltage" = lib.mkOption {
            type = lib.types.listOf lib.types.int;
            default = [ 201 211 221 231 241 251 261 271 281 291 301 311 321 331 341 351 361 371 381 391 401 411 421 431 441 451 461 471 481 491 501 511 521 531 541 551 561 571 581 591 601 611 621 631 641 651 661 671 ];
          };
          "2_Ruin Buffers Tier Medium Voltage" = lib.mkOption {
            type = lib.types.listOf lib.types.int;
            default = [ 162 172 182 192 ];
          };
          "2_Ruin Cables Tier Medium Voltage" = lib.mkOption {
            type = lib.types.listOf lib.types.int;
            default = [ 1310 1330 1350 1370 1390 ];
          };
          "2_Ruin Generators Tier Medium Voltage" = lib.mkOption {
            type = lib.types.listOf lib.types.int;
            default = [ 1111 12726 1116 1121 1128 ];
          };
          "2_Ruin Machines Tier Medium Voltage" = lib.mkOption {
            type = lib.types.listOf lib.types.int;
            default = [ 202 212 222 232 242 252 262 272 282 292 302 312 322 332 342 352 362 372 382 392 402 412 422 432 442 452 462 472 482 492 502 512 522 532 542 552 562 572 582 592 602 612 622 632 642 652 662 672 ];
          };
          "3_Ruin Buffers Tier High Voltage" = lib.mkOption {
            type = lib.types.listOf lib.types.int;
            default = [ 163 173 183 193 ];
          };
          "3_Ruin Cables Tier High Voltage" = lib.mkOption {
            type = lib.types.listOf lib.types.int;
            default = [ 1410 1430 1450 1470 1490 ];
          };
          "3_Ruin Generators Tier High Voltage" = lib.mkOption {
            type = lib.types.listOf lib.types.int;
            default = [ 1112 12727 1117 1122 1129 ];
          };
          "3_Ruin Machines Tier High Voltage" = lib.mkOption {
            type = lib.types.listOf lib.types.int;
            default = [ 203 213 223 233 243 253 263 273 283 293 303 313 323 333 343 353 363 373 383 393 403 413 423 433 443 453 463 473 483 493 503 513 523 533 543 553 563 573 583 593 603 613 623 633 643 653 663 673 ];
          };
          "4_Ruin Buffers Tier Extreme Voltage" = lib.mkOption {
            type = lib.types.listOf lib.types.int;
            default = [ 164 174 184 194 ];
          };
          "4_Ruin Cables Tier Extreme Voltage" = lib.mkOption {
            type = lib.types.listOf lib.types.int;
            default = [ 1510 1530 1550 1570 1590 ];
          };
          "4_Ruin Generators Tier Extreme Voltage" = lib.mkOption {
            type = lib.types.listOf lib.types.int;
            default = [ 12728 1130 1113 1118 ];
          };
          "4_Ruin Machines Tier Extreme Voltage" = lib.mkOption {
            type = lib.types.listOf lib.types.int;
            default = [ 204 214 224 234 244 254 264 274 284 294 304 314 324 334 344 354 364 374 384 394 404 414 424 434 444 454 464 474 484 494 504 514 524 534 544 554 564 574 584 594 604 614 624 634 644 654 664 674 ];
          };
          "A_Ruin Machine Tiers" = lib.mkOption {
            type = lib.types.int;
            default = 5;
          };
          };
        };
      };
      singleblocks = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          "mL Water per Sec for the StirlingPump" = lib.mkOption {
            type = lib.types.int;
            default = 150;
          };
          };
        };
      };
      system = lib.mkOption {
        default = {};
        type = lib.types.submodule {
          options = {
          BartWorksSharedItemStackToolTips = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "If you wish to enable \"Shared Item Stack\" tooltips";
          };
          BartWorksToolTips = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "If you wish to enable extra tooltips";
          };
          "Creative Debug Scanner" = lib.mkOption {
            type = lib.types.int;
            default = 0;
            description = "ID for the Creative Debug Scanner Block";
          };
          "Disable BioLab" = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "This switch disables the BioLab, BioVat etc. If you use GT5.08 or equivalent, this needs to be turned off!";
          };
          "Disable Extra Gases for EBF" = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "This switch disables extra gas recipes for the EBF, i.e. Xenon instead of Nitrogen";
          };
          "Disable GT++ Logging" = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "Enables or Disables GT++ Logging.";
          };
          "Disable non-original-GT-stuff" = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "This switch disables my new content, that is not part of the GT2 compat";
          };
          "Enable Classic Mode" = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "Enables the classic Mode (all recipes in normal machines are doable in MV";
          };
          "Enable Debug Log" = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "Enables or Disables the debug log.";
          };
          "Enable Teslastaff" = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "Enables the Teslastaff, an Item used to destroy Electric Armors";
          };
          "ID Offset" = lib.mkOption {
            type = lib.types.int;
            default = 12600;
            description = "ID Offset for this mod. This Mod uses 85 IDs. DO NOT CHANGE IF YOU DONT KNOW WHAT THIS IS";
          };
          "Mode switch" = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "If GTNH is Loaded, this will enable easy recipes, if not, it will enable harder recipes.";
          };
          "Tier to nerf circuits" = lib.mkOption {
            type = lib.types.int;
            default = 5;
            description = "This switch sets the lowest unnerfed Circuit Recipe Tier. -1 to disable it completely.";
          };
          };
        };
      };
      };
    };
  };
}
