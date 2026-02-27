{lib, ...}: {
  WarpTheory = lib.mkOption {
    description = "WarpTheory configuration (./config/WarpTheory.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
        type = lib.types.str;
        default = "./config/WarpTheory.cfg";
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
              addWarpEffects = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "whether to add general warp effects. If false extra effects will only be seen when using Pure Tear [default: true]";
              };
              allowGlobalWarpEffects = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "whether warp effects that involve the environment are triggered [default: true]";
              };
              allowMultiWarpEffects = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "whether multi-level warp effects are allowed. If false, only the first level will trigger [default: true]";
              };
              allowPermWarpRemoval = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "whether items can remove permanent warp or not [default: true]";
              };
              allowServerErrorWarpEffects = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "whether to allow warp effects known to cause errors on servers [default: false]";
              };
              disableRebound = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "disable warp events ignoring warpwarding which occur by Pure Tear [default: false]";
              };
              permWarpMult = lib.mkOption {
                type = lib.types.int;
                default = 1;
                description = "how much more 'expensive' permanent warp is compared to normal warp [range: 0 ~ 2147483647, default: 1]";
              };
              wussMode = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "enables less expensive recipes [default: false]";
              };
            };
          };
        };
        warp_effects = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              allowAccelerationEffect = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Whether to allow acceleration warp effect. [default: true]";
              };
              allowBatsEffect = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Whether to allow spawn bats warp effect. [default: true]";
              };
              allowBlazeFireballEffect = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Whether to allow blaze fireball warp effect. [default: true]";
              };
              allowBlindEffect = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Whether to allow blindness warp effect. [default: true]";
              };
              allowBlinkEffect = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Whether to allow random teleport warp effect. [default: true]";
              };
              allowBloodEffect = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Whether to allow blood warp effect. [default: true]";
              };
              allowChestEffect = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Whether to allow chest scramble warp effect. [default: false]";
              };
              allowCoinEffect = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Whether to allow coin warp effect. [default: true]";
              };
              allowCountdownBombEffect = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Whether to allow countdown bomb warp effect. [default: true]";
              };
              allowDeafEffect = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Whether to allow ears (unable to read messages) warp effect. [default: false]";
              };
              allowDecayEffect = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Whether to allow decay warp effect. [default: true]";
              };
              allowDoppelgangerEffect = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Whether to allow doppelganger warp effect. [default: true]";
              };
              allowEnderPearlEffect = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Whether to allow ender pearl warp effect. [default: true]";
              };
              allowEndermenEffect = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Whether to allow endermen warp effect. [default: true]";
              };
              allowEyeBlinkEffect = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Whether to allow eye blink warp effect. [default: false]";
              };
              allowFakeBoomEffect = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Whether to allow fake explosion warp effect. [default: true]";
              };
              allowFakeBoomerEffect = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Whether to allow fake creeper warp effect. [default: true]";
              };
              allowFakeDiscordPingEffect = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Whether to allow fake discord ping warp effect. [default: true]";
              };
              allowFakeDiscordVoiceChannelJoinEffect = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Whether to allow fake discord voice channel join warp effect. [default: true]";
              };
              allowFakeEndermanEffect = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Whether to allow fake enderman warp effect. [default: true]";
              };
              allowFakeRainEffect = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Whether to allow fake rain warp effect. [default: true]";
              };
              allowFakeWitherEffect = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Whether to allow fake wither warp effect. [default: true]";
              };
              allowFireBatsEffect = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Whether to allow fire bats warp effect. [default: true]";
              };
              allowFriendEffect = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Whether to allow friendly creeper warp effect. [default: true]";
              };
              allowGregTechFakeSoundEffect = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Whether to allow GregTech fake sound warp effect. [default: true]";
              };
              allowInsomniaEffect = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Whether to allow insomnia warp effect. [default: true]";
              };
              allowInventoryScrambleEffect = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Whether to allow inventory scramble warp effect. [default: true]";
              };
              allowInventorySwapEffect = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Whether to allow inventory swap warp effect. [default: true]";
              };
              allowJumpEffect = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Whether to allow jump boost warp effect. [default: true]";
              };
              allowJunkEffect = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Whether to allow junk warp effect. [default: true]";
              };
              allowLayEggsEffect = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Whether to allow lay eggs warp effect. [default: true]";
              };
              allowLightningEffect = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Whether to allow lightning warp effect. [default: true]";
              };
              allowLitmusPaperEffect = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Whether to allow litmus paper warp effect. [default: true]";
              };
              allowLiveStockRainEffect = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Whether to allow livestock rain warp effect. [default: true]";
              };
              allowMessageEffect = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Whether to allow message warp effect. [default: true]";
              };
              allowMushroomsEffect = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Whether to allow mushrooms warp effect. [default: true]";
              };
              allowMuteEffect = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Whether to allow tongue (unable to send messages) warp effect. [default: false]";
              };
              allowNauseaEffect = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Whether to allow nausea warp effect. [default: true]";
              };
              allowObsidianEffect = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Whether to allow obsidian warp effect. [default: true]";
              };
              allowPhantomsEffect = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Whether to allow phantoms warp effect. [default: true]";
              };
              allowPoisonEffect = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Whether to allow poison warp effect. [default: true]";
              };
              allowPumpkinEffect = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Whether to allow pumpkin warp effect. [default: true]";
              };
              allowRainEffect = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Whether to allow rain warp effect. [default: true]";
              };
              allowSnowEffect = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Whether to allow snow warp effect. [default: true]";
              };
              allowSwampEffect = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Whether to allow swamp (random trees) warp effect. [default: true]";
              };
              allowWandDrainEffect = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Whether to allow wand drain warp effect. [default: true]";
              };
              allowWindEffect = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Whether to allow wind warp effect. [default: true]";
              };
              allowWitherPotionEffect = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Whether to allow wither potion warp effect. [default: true]";
              };
              allowWitherSpawnEffect = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Whether to allow spawn wither warp effect. [default: true]";
              };
              allowWorldHoleEffect = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Whether to allow world hole warp effect. May cause server errors. [default: false]";
              };
            };
          };
        };
        warp_levels = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              minWarpAccelerationEffect = lib.mkOption {
                type = lib.types.int;
                default = 140;
                description = "Min warp required until acceleration can happen. [range: 1 ~ 200, default: 140]";
              };
              minWarpBatsEffect = lib.mkOption {
                type = lib.types.int;
                default = 30;
                description = "Min warp required until spawn bats can happen. [range: 1 ~ 200, default: 30]";
              };
              minWarpBlazeFireballEffect = lib.mkOption {
                type = lib.types.int;
                default = 95;
                description = "Min warp required until blaze fireball can happen. [range: 1 ~ 200, default: 95]";
              };
              minWarpBlindEffect = lib.mkOption {
                type = lib.types.int;
                default = 65;
                description = "Min warp required until blindness can happen. [range: 1 ~ 200, default: 65]";
              };
              minWarpBlinkEffect = lib.mkOption {
                type = lib.types.int;
                default = 130;
                description = "Min warp required until random teleport can happen. [range: 1 ~ 200, default: 130]";
              };
              minWarpBloodEffect = lib.mkOption {
                type = lib.types.int;
                default = 35;
                description = "Min warp required until blood can happen. [range: 1 ~ 200, default: 35]";
              };
              minWarpChestEffect = lib.mkOption {
                type = lib.types.int;
                default = 175;
                description = "Min warp required until chest scramble can happen. [range: 1 ~ 200, default: 175]";
              };
              minWarpCoinEffect = lib.mkOption {
                type = lib.types.int;
                default = 15;
                description = "Min warp required until coin can happen. [range: 1 ~ 200, default: 15]";
              };
              minWarpCountdownBombEffect = lib.mkOption {
                type = lib.types.int;
                default = 160;
                description = "Min warp required until countdown bomb can happen. [range: 1 ~ 200, default: 160]";
              };
              minWarpDeafEffect = lib.mkOption {
                type = lib.types.int;
                default = 75;
                description = "Min warp required until ears (unable to read messages) can happen. [range: 1 ~ 200, default: 75]";
              };
              minWarpDecayEffect = lib.mkOption {
                type = lib.types.int;
                default = 180;
                description = "Min warp required until decay can happen. [range: 1 ~ 200, default: 180]";
              };
              minWarpDoppelgangerEffect = lib.mkOption {
                type = lib.types.int;
                default = 75;
                description = "Min warp required until doppelganger can happen. [range: 1 ~ 200, default: 75]";
              };
              minWarpEnderPearlEffect = lib.mkOption {
                type = lib.types.int;
                default = 90;
                description = "Min warp required until ender pearl can happen. [range: 1 ~ 200, default: 90]";
              };
              minWarpEndermenEffect = lib.mkOption {
                type = lib.types.int;
                default = 80;
                description = "Min warp required until endermen can happen. [range: 1 ~ 200, default: 80]";
              };
              minWarpEyeBlinkEffect = lib.mkOption {
                type = lib.types.int;
                default = 5;
                description = "Min warp required until eye blink can happen. [range: 1 ~ 200, default: 5]";
              };
              minWarpFakeBoomEffect = lib.mkOption {
                type = lib.types.int;
                default = 10;
                description = "Min warp required until fake explosion can happen. [range: 1 ~ 200, default: 10]";
              };
              minWarpFakeBoomerEffect = lib.mkOption {
                type = lib.types.int;
                default = 25;
                description = "Min warp required until fake creeper can happen. [range: 1 ~ 200, default: 25]";
              };
              minWarpFakeDiscordPingEffect = lib.mkOption {
                type = lib.types.int;
                default = 50;
                description = "Min warp required until fake discord ping can happen. [range: 1 ~ 200, default: 50]";
              };
              minWarpFakeDiscordVoiceChannelJoinEffect = lib.mkOption {
                type = lib.types.int;
                default = 100;
                description = "Min warp required until fake discord voice channel join can happen. [range: 1 ~ 200, default: 100]";
              };
              minWarpFakeEndermanEffect = lib.mkOption {
                type = lib.types.int;
                default = 35;
                description = "Min warp required until fake enderman can happen. [range: 1 ~ 200, default: 35]";
              };
              minWarpFakeRainEffect = lib.mkOption {
                type = lib.types.int;
                default = 25;
                description = "Min warp required until fake rain can happen. [range: 1 ~ 200, default: 25]";
              };
              minWarpFakeWitherEffect = lib.mkOption {
                type = lib.types.int;
                default = 150;
                description = "Min warp required until fake wither can happen. [range: 1 ~ 200, default: 150]";
              };
              minWarpFireBatsEffect = lib.mkOption {
                type = lib.types.int;
                default = 60;
                description = "Min warp required until fire bats can happen. [range: 1 ~ 200, default: 60]";
              };
              minWarpFriendEffect = lib.mkOption {
                type = lib.types.int;
                default = 40;
                description = "Min warp required until friendly creeper can happen. [range: 1 ~ 200, default: 40]";
              };
              minWarpGregTechFakeSoundEffect = lib.mkOption {
                type = lib.types.int;
                default = 30;
                description = "Min warp required until GregTech fake sound can happen. [range: 1 ~ 200, default: 30]";
              };
              minWarpInsomniaEffect = lib.mkOption {
                type = lib.types.int;
                default = 50;
                description = "Min warp required until insomnia can happen. [range: 1 ~ 200, default: 50]";
              };
              minWarpInventoryScrambleEffect = lib.mkOption {
                type = lib.types.int;
                default = 150;
                description = "Min warp required until inventory scramble can happen. [range: 1 ~ 200, default: 150]";
              };
              minWarpInventorySwapEffect = lib.mkOption {
                type = lib.types.int;
                default = 125;
                description = "Min warp required until inventory swap can happen. [range: 1 ~ 200, default: 125]";
              };
              minWarpJumpEffect = lib.mkOption {
                type = lib.types.int;
                default = 45;
                description = "Min warp required until jump boost can happen. [range: 1 ~ 200, default: 45]";
              };
              minWarpJunkEffect = lib.mkOption {
                type = lib.types.int;
                default = 100;
                description = "Min warp required until junk can happen. [range: 1 ~ 200, default: 100]";
              };
              minWarpLayEggsEffect = lib.mkOption {
                type = lib.types.int;
                default = 20;
                description = "Min warp required until lay eggs can happen. [range: 1 ~ 200, default: 20]";
              };
              minWarpLightningEffect = lib.mkOption {
                type = lib.types.int;
                default = 120;
                description = "Min warp required until lightning can happen. [range: 1 ~ 200, default: 120]";
              };
              minWarpLitmusPaperEffect = lib.mkOption {
                type = lib.types.int;
                default = 100;
                description = "Min warp required until litmus paper can happen. [range: 1 ~ 200, default: 100]";
              };
              minWarpLiveStockRainEffect = lib.mkOption {
                type = lib.types.int;
                default = 70;
                description = "Min warp required until livestock rain can happen. [range: 1 ~ 200, default: 70]";
              };
              minWarpMessageEffect = lib.mkOption {
                type = lib.types.int;
                default = 5;
                description = "Min warp required until message can happen. [range: 1 ~ 200, default: 5]";
              };
              minWarpMushroomsEffect = lib.mkOption {
                type = lib.types.int;
                default = 170;
                description = "Min warp required until mushrooms can happen. [range: 1 ~ 200, default: 170]";
              };
              minWarpMuteEffect = lib.mkOption {
                type = lib.types.int;
                default = 75;
                description = "Min warp required until tongue (unable to send messages) can happen. [range: 1 ~ 200, default: 75]";
              };
              minWarpNauseaEffect = lib.mkOption {
                type = lib.types.int;
                default = 45;
                description = "Min warp required until nausea can happen. [range: 1 ~ 200, default: 45]";
              };
              minWarpObsidianEffect = lib.mkOption {
                type = lib.types.int;
                default = 110;
                description = "Min warp required until obsidian can happen. [range: 1 ~ 200, default: 110]";
              };
              minWarpPhantomsEffect = lib.mkOption {
                type = lib.types.int;
                default = 20;
                description = "Min warp required until phantoms can happen. [range: 1 ~ 200, default: 20]";
              };
              minWarpPoisonEffect = lib.mkOption {
                type = lib.types.int;
                default = 65;
                description = "Min warp required until poison can happen. [range: 1 ~ 200, default: 65]";
              };
              minWarpPumpkinEffect = lib.mkOption {
                type = lib.types.int;
                default = 15;
                description = "Min warp required until pumpkin can happen. [range: 1 ~ 200, default: 15]";
              };
              minWarpRainEffect = lib.mkOption {
                type = lib.types.int;
                default = 55;
                description = "Min warp required until rain can happen. [range: 1 ~ 200, default: 55]";
              };
              minWarpSnowEffect = lib.mkOption {
                type = lib.types.int;
                default = 175;
                description = "Min warp required until snow can happen. [range: 1 ~ 200, default: 175]";
              };
              minWarpSwampEffect = lib.mkOption {
                type = lib.types.int;
                default = 190;
                description = "Min warp required until swamp (random trees) can happen. [range: 1 ~ 200, default: 190]";
              };
              minWarpWandDrainEffect = lib.mkOption {
                type = lib.types.int;
                default = 50;
                description = "Min warp required until wand drain can happen. [range: 1 ~ 200, default: 50]";
              };
              minWarpWindEffect = lib.mkOption {
                type = lib.types.int;
                default = 85;
                description = "Min warp required until wind can happen. [range: 1 ~ 200, default: 85]";
              };
              minWarpWitherPotionEffect = lib.mkOption {
                type = lib.types.int;
                default = 80;
                description = "Min warp required until wither potion can happen. [range: 1 ~ 200, default: 80]";
              };
              minWarpWitherSpawnEffect = lib.mkOption {
                type = lib.types.int;
                default = 200;
                description = "Min warp required until spawn wither can happen. [range: 1 ~ 200, default: 200]";
              };
              minWarpWorldHoleEffect = lib.mkOption {
                type = lib.types.int;
                default = 150;
                description = "Min warp required until world hole can happen. [range: 1 ~ 200, default: 150]";
              };
            };
          };
        };
      };
    };
  };
}
