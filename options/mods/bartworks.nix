{lib, ...}: {
  bartworks = lib.mkOption {
    description = "bartworks configuration (./config/bartworks.cfg)";
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
        general = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              mixins = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    enableCraftingManagerRecipeCaching = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                      description = "if true, patches the crafting manager to cache recipes in class: net.minecraft.item.crafting.CraftingManager [default: false]";
                    };
                  };
                };
              };
              crossmodinteractions = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    Ross128Enabled = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "If the Ross128 System should be activated, DO NOT CHANGE AFTER WORLD GENERATION [default: true]";
                    };
                    disableMagicalForest = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                      description = "True disables the magical Forest Biome on Ross for more performance during World generation. [default: false]";
                    };
                    landerType = lib.mkOption {
                      type = lib.types.str;
                      default = "AsteroidsLander";
                      description = "[default: AsteroidsLander]";
                    };
                    ross128BAID = lib.mkOption {
                      type = lib.types.int;
                      default = 63;
                      description = "The Dim ID for Ross128ba (Ross128b's Moon) [range: -2147483648 ~ 2147483647, default: 63]";
                    };
                    ross128BID = lib.mkOption {
                      type = lib.types.int;
                      default = 64;
                      description = "The Dim ID for Ross128b [range: -2147483648 ~ 2147483647, default: 64]";
                    };
                    ross128bRuinChance = lib.mkOption {
                      type = lib.types.int;
                      default = 512;
                      description = "Higher Values mean lesser Ruins. [range: -2147483648 ~ 2147483647, default: 512]";
                    };
                  };
                };
              };
              multiblocks = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    disablePistonInEIC = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                      description = "This switch completely disables piston animation in Electric Implosion Compressor multiblock [default: false]";
                    };
                    energyPerCell = lib.mkOption {
                      type = lib.types.int;
                      default = 20000000;
                      description = "This will set Up the Energy per LESU Cell [range: -2147483648 ~ 2147483647, default: 20000000]";
                    };
                    voidMinerBlacklist = lib.mkOption {
                      type = lib.types.listOf lib.types.str;
                      default = [ ];
                      description = "For example: gregtech:gt.blockores:32 [default: ]";
                    };
                  };
                };
              };
              tooltip = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    addGlassTierInTooltips = lib.mkOption {
                      type = lib.types.bool;
                      default = true;
                      description = "If true, add glass tier in tooltips. [default: true]";
                    };
                  };
                };
              };
              singleblocks = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    mbWaterperSec = lib.mkOption {
                      type = lib.types.int;
                      default = 150;
                      description = "mL Water per Sec for the StirlingPump [range: -2147483648 ~ 2147483647, default: 150]";
                    };
                  };
                };
              };
              rossruinmetas = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    highpressuresteam = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          buffers = lib.mkOption {
                            type = lib.types.listOf lib.types.int;
                            default = [ 5133 5123 ];
                            description = "MetaIDs of the GT machines for the buffer slots [default: [5133, 5123]]";
                          };
                          cables = lib.mkOption {
                            type = lib.types.listOf lib.types.int;
                            default = [ 5133 5123 ];
                            description = "MetaIDs of the GT machines for the cable slots [default: [5133, 5123]]";
                          };
                          generators = lib.mkOption {
                            type = lib.types.listOf lib.types.int;
                            default = [ 100 101 102 105 ];
                            description = "MetaIDs of the GT machines for the generator slots [default: [100, 101, 102, 105]]";
                          };
                          machines = lib.mkOption {
                            type = lib.types.listOf lib.types.int;
                            default = [ 103 104 106 107 109 110 112 113 115 116 118 119 ];
                            description = "MetaIDs of the GT machines for the machine slots [default: [103, 104, 106, 107, 109, 110, 112, 113, 115, 116, 118, 119]]";
                          };
                        };
                      };
                    };
                    lv = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          buffers = lib.mkOption {
                            type = lib.types.listOf lib.types.int;
                            default = [ 161 171 181 191 ];
                            description = "MetaIDs of the GT machines for the buffer slots [default: [161, 171, 181, 191]]";
                          };
                          cables = lib.mkOption {
                            type = lib.types.listOf lib.types.int;
                            default = [ 1210 1230 1250 1270 1290 ];
                            description = "MetaIDs of the GT machines for the cable slots [default: [1210, 1230, 1250, 1270, 1290]]";
                          };
                          generators = lib.mkOption {
                            type = lib.types.listOf lib.types.int;
                            default = [ 1110 1115 1120 1127 ];
                            description = "MetaIDs of the GT machines for the generator slots [default: [1110, 1115, 1120, 1127]]";
                          };
                          machines = lib.mkOption {
                            type = lib.types.listOf lib.types.int;
                            default = [ 201 211 221 231 241 251 261 271 281 291 301 311 321 331 341 351 361 371 381 391 401 411 421 431 441 461 471 481 491 501 511 521 531 541 551 561 571 581 591 601 611 621 631 641 651 661 671 ];
                            description = "MetaIDs of the GT machines for the machine slots [default: [201, 211, 221, 231, 241, 251, 261, 271, 281, 291, 301, 311, 321, 331, 341, 351, 361, 371, 381, 391, 401, 411, 421, 431, 441, 451, 461, 471, 481, 491, 501, 511, 521, 531, 541, 551, 561, 571, 581, 591, 601, 611, 621, 631, 641, 651, 661, 671]]";
                          };
                        };
                      };
                    };
                    mv = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          buffers = lib.mkOption {
                            type = lib.types.listOf lib.types.int;
                            default = [ 162 172 182 192 ];
                            description = "MetaIDs of the GT machines for the buffer slots [default: [162, 172, 182, 192]]";
                          };
                          cables = lib.mkOption {
                            type = lib.types.listOf lib.types.int;
                            default = [ 1310 1330 1350 1370 1390 ];
                            description = "MetaIDs of the GT machines for the cable slots [default: [1310, 1330, 1350, 1370, 1390]]";
                          };
                          generators = lib.mkOption {
                            type = lib.types.listOf lib.types.int;
                            default = [ 1111 12726 1116 1121 1128 ];
                            description = "MetaIDs of the GT machines for the generator slots [default: [1111, 12726, 1116, 1121, 1128]]";
                          };
                          machines = lib.mkOption {
                            type = lib.types.listOf lib.types.int;
                            default = [ 202 212 222 232 242 252 262 272 282 292 302 312 322 332 342 352 362 372 382 392 402 412 422 432 442 462 472 482 492 502 512 522 532 542 552 562 572 582 592 602 612 622 632 642 652 662 672 ];
                            description = "MetaIDs of the GT machines for the machine slots [default: [202, 212, 222, 232, 242, 252, 262, 272, 282, 292, 302, 312, 322, 332, 342, 352, 362, 372, 382, 392, 402, 412, 422, 432, 442, 452, 462, 472, 482, 492, 502, 512, 522, 532, 542, 552, 562, 572, 582, 592, 602, 612, 622, 632, 642, 652, 662, 672]]";
                          };
                        };
                      };
                    };
                    hv = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          buffers = lib.mkOption {
                            type = lib.types.listOf lib.types.int;
                            default = [ 163 173 183 193 ];
                            description = "MetaIDs of the GT machines for the buffer slots [default: [163, 173, 183, 193]]";
                          };
                          cables = lib.mkOption {
                            type = lib.types.listOf lib.types.int;
                            default = [ 1410 1430 1450 1470 1490 ];
                            description = "MetaIDs of the GT machines for the cable slots [default: [1410, 1430, 1450, 1470, 1490]]";
                          };
                          generators = lib.mkOption {
                            type = lib.types.listOf lib.types.int;
                            default = [ 1112 12727 1117 1122 1129 ];
                            description = "MetaIDs of the GT machines for the generator slots [default: [1112, 12727, 1117, 1122, 1129]]";
                          };
                          machines = lib.mkOption {
                            type = lib.types.listOf lib.types.int;
                            default = [ 203 213 223 233 243 253 263 273 283 293 303 313 323 333 343 353 363 373 383 393 403 413 423 433 443 463 473 483 493 503 513 523 533 543 553 563 573 583 593 603 613 623 633 643 653 663 673 ];
                            description = "MetaIDs of the GT machines for the machine slots [default: [203, 213, 223, 233, 243, 253, 263, 273, 283, 293, 303, 313, 323, 333, 343, 353, 363, 373, 383, 393, 403, 413, 423, 433, 443, 453, 463, 473, 483, 493, 503, 513, 523, 533, 543, 553, 563, 573, 583, 593, 603, 613, 623, 633, 643, 653, 663, 673]]";
                          };
                        };
                      };
                    };
                    ev = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          buffers = lib.mkOption {
                            type = lib.types.listOf lib.types.int;
                            default = [ 164 174 184 194 ];
                            description = "MetaIDs of the GT machines for the buffer slots [default: [164, 174, 184, 194]]";
                          };
                          cables = lib.mkOption {
                            type = lib.types.listOf lib.types.int;
                            default = [ 1510 1530 1550 1570 1590 ];
                            description = "MetaIDs of the GT machines for the cable slots [default: [1510, 1530, 1550, 1570, 1590]]";
                          };
                          generators = lib.mkOption {
                            type = lib.types.listOf lib.types.int;
                            default = [ 12728 1190 1130 12685 ];
                            description = "MetaIDs of the GT machines for the generator slots [default: [12728, 1190, 1130, 12685]]";
                          };
                          machines = lib.mkOption {
                            type = lib.types.listOf lib.types.int;
                            default = [ 204 214 224 234 244 254 264 274 284 294 304 314 324 334 344 354 364 374 384 394 404 414 424 434 444 464 474 484 494 504 514 524 534 544 554 564 574 584 594 604 614 624 634 644 654 664 674 ];
                            description = "MetaIDs of the GT machines for the machine slots [default: [204, 214, 224, 234, 244, 254, 264, 274, 284, 294, 304, 314, 324, 334, 344, 354, 364, 374, 384, 394, 404, 414, 424, 434, 444, 454, 464, 474, 484, 494, 504, 514, 524, 534, 544, 554, 564, 574, 584, 594, 604, 614, 624, 634, 644, 654, 664, 674]]";
                          };
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
}
