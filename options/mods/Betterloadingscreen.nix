{lib, ...}: {
  betterloadingscreen = lib.mkOption {
    description = "betterloadingscreen configuration (./config/Betterloadingscreen/betterloadingscreen.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
          type = lib.types.str;
          default = "./config/Betterloadingscreen/betterloadingscreen.cfg";
          readOnly = true;
        };
        kind = lib.mkOption {
          type = lib.types.str;
          default = "forge";
          readOnly = true;
        };
        "changing background" = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              alphaDecreaseStep = lib.mkOption {
                type = lib.types.float;
                default = 0.05;
              };
              backgroundChanging = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Whether backgrounds should change randomly during loading. They are taken from the random background list [default: true]";
              };
              blendTimeMilliseconds = lib.mkOption {
                type = lib.types.float;
                default = 2000.0;
                description = "Time in milliseconds between each image change (smooth blend). [range: 0.0 ~ 30000.0, default: 2000.0]";
              };
              changeFrequency = lib.mkOption {
                type = lib.types.int;
                default = 20;
                description = "How many seconds between background changes [range: 1 ~ 9000, default: 40]";
              };
              shouldGLClear = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "No, don't touch that! [default: false]";
              };
              threadSleepTime = lib.mkOption {
                type = lib.types.int;
                default = 20;
              };
            };
          };
        };
        general = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              connectExternally = lib.mkOption {
                type = lib.types.bool;
                default = false;
              };
              font = lib.mkOption {
                type = lib.types.str;
                default = "textures/font/ascii.png";
                description = "Note: if a resourcepack adds a font, it will be used by BLS. [default: textures/font/ascii.png]";
              };
              playSound = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Play a sound after minecraft has finished starting up [default: true]";
              };
              sound = lib.mkOption {
                type = lib.types.str;
                default = "minecraft:random.orb";
                description = "What sound to play when loading is complete. Default is the level up sound (betterloadingscreen:rhapsodia_orb) [default: betterloadingscreen:rhapsodia_orb]";
              };
              useMinecraft = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Note: IIRC, setting this to false makes the screen black [default: true]";
              };
            };
          };
        };
        imgur = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              imgurGalleryLink = lib.mkOption {
                type = lib.types.str;
                default = "https://imgur.com/gallery/Ks0TrYE";
              };
              useImgur = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Set to true if you want to load images from an imgur gallery and use them as backgrounds. [default: false]";
              };
            };
          };
        };
        layout = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              GTProgressBarPos = lib.mkOption {
                type = lib.types.str;
                default = "[0, 0, 194, 24, 0, -83, 188, 12]";
                description = "Material loading bar position [default: [0, 0, 194, 24, 0, -83, 188, 12]]";
              };
              GTProgressBarPosAnimated = lib.mkOption {
                type = lib.types.str;
                default = "[0, 24, 194, 24, 0, -83, 188, 12]";
                description = "Material animated loading bar position [default: [0, 24, 194, 24, 0, -83, 188, 12]]";
              };
              background = lib.mkOption {
                type = lib.types.str;
                default = "betterloadingscreen:textures/backgrounds/background1.png";
                description = "You can use a resourcepack or resource loader for custom resources. [default: betterloadingscreen:textures/backgrounds/01.png]";
              };
              backgroundList = lib.mkOption {
                type = lib.types.str;
                default = "{betterloadingscreen:textures/backgrounds/background1.png, betterloadingscreen:textures/backgrounds/background2.png, betterloadingscreen:textures/backgrounds/background3.png, betterloadingscreen:textures/backgrounds/background4.png, betterloadingscreen:textures/backgrounds/background5.png, betterloadingscreen:textures/backgrounds/background6.png, betterloadingscreen:textures/backgrounds/background7.png, betterloadingscreen:textures/backgrounds/background8.png, betterloadingscreen:textures/backgrounds/background9.png, betterloadingscreen:textures/backgrounds/background10.png, betterloadingscreen:textures/backgrounds/background11.png, betterloadingscreen:textures/backgrounds/background12.png, betterloadingscreen:textures/backgrounds/background14.png, betterloadingscreen:textures/backgrounds/background15.png, betterloadingscreen:textures/backgrounds/background16.png, betterloadingscreen:textures/backgrounds/background17.png, betterloadingscreen:textures/backgrounds/background18.png, betterloadingscreen:textures/backgrounds/background19.png, betterloadingscreen:textures/backgrounds/background20.png, betterloadingscreen:textures/backgrounds/background13.png, betterloadingscreen:textures/backgrounds/background21.png, betterloadingscreen:textures/backgrounds/background22.png, betterloadingscreen:textures/backgrounds/background23.png, betterloadingscreen:textures/backgrounds/background24.png, betterloadingscreen:textures/backgrounds/background25.png, betterloadingscreen:textures/backgrounds/background26.png, betterloadingscreen:textures/backgrounds/background27.png, betterloadingscreen:textures/backgrounds/background28.png, betterloadingscreen:textures/backgrounds/background29.png, betterloadingscreen:textures/backgrounds/background30.png, betterloadingscreen:textures/backgrounds/background31.png, betterloadingscreen:textures/backgrounds/background32.png, betterloadingscreen:textures/backgrounds/background33.png, betterloadingscreen:textures/backgrounds/background34.png, betterloadingscreen:textures/backgrounds/background35.png}";
                description = "The paths must be separated by commas. [default: {betterloadingscreen:textures/backgrounds/01.png, betterloadingscreen:textures/backgrounds/02.png}]";
              };
              loadingBarsAlpha = lib.mkOption {
                type = lib.types.str;
                default = "0.5";
                description = "Transparency of main and GT material dynamic loading bar [range: 0.0 ~ 1.0, default: 0.5]";
              };
              loadingBarsColor = lib.mkOption {
                type = lib.types.str;
                default = "fdf900";
                description = "color of main and GT material dynamic loading bar (Use ffffff (white)) if you don't want to color it [default: fdf900]";
              };
              mainProgressBar = lib.mkOption {
                type = lib.types.str;
                default = "betterloadingscreen:textures/mainProgressBar.png";
                description = "Path to main loading bar resource [default: betterloadingscreen:textures/mainProgressBar.png]";
              };
              mainProgressBarAnimated = lib.mkOption {
                type = lib.types.str;
                default = "betterloadingscreen:textures/mainProgressBar.png";
                description = "Path to animated main loading bar resource [default: betterloadingscreen:textures/mainProgressBar.png]";
              };
              mainProgressBarPercentagePos = lib.mkOption {
                type = lib.types.str;
                default = "[0, -40]";
                description = "Main loading bar percentage position [default: [0, -40]]";
              };
              mainProgressBarPos = lib.mkOption {
                type = lib.types.str;
                default = "[0, 0, 194, 24, 0, -50, 194, 16]";
                description = "Main loading bar position [default: [0, 0, 194, 24, 0, -50, 194, 16]]";
              };
              mainProgressBarPosAnimated = lib.mkOption {
                type = lib.types.str;
                default = "[0, 24, 194, 24, 0, -50, 194, 16]";
                description = "Main animated loading bar position [default: [0, 24, 194, 24, 0, -50, 194, 16]]";
              };
              mainProgressBarTextPos = lib.mkOption {
                type = lib.types.str;
                default = "[0, -30]";
                description = "Main loading bar text position. The four values are for position. [default: [0, -30]]";
              };
              materialProgressBar = lib.mkOption {
                type = lib.types.str;
                default = "betterloadingscreen:textures/GTMaterialsprogressBars.png";
                description = "Path to materials loading bar [default: betterloadingscreen:textures/GTMaterialsprogressBars.png]";
              };
              materialProgressBarAnimated = lib.mkOption {
                type = lib.types.str;
                default = "betterloadingscreen:textures/GTMaterialsprogressBars.png";
                description = "Path to animated materials loading bar [default: betterloadingscreen:textures/GTMaterialsprogressBars.png]";
              };
              materialProgressBarPercentagePos = lib.mkOption {
                type = lib.types.str;
                default = "[0, -75]";
                description = "Material loading bar percentage position [default: [0, -75]]";
              };
              materialProgressBarTextPos = lib.mkOption {
                type = lib.types.str;
                default = "[0, -65]";
                description = "Material loading bar text position. The two values are for position (x and y). [default: [0, -65]]";
              };
              memoryBarPos = lib.mkOption {
                type = lib.types.str;
                default = "[0, 0, 194, 24, 0, 48, 194, 16]";
                description = "Memory bar position [default: [0, 0, 194, 24, 0, 48, 194, 16]]";
              };
              memoryBarPosAnimated = lib.mkOption {
                type = lib.types.str;
                default = "[0, 24, 194, 24, 0, 48, 194, 16]";
                description = "Memory bar animated position [default: [0, 24, 194, 24, 0, 48, 194, 16]]";
              };
              randomBackgrounds = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Whether display a random background from the random backgrounds list [default: true]";
              };
              textColor = lib.mkOption {
                type = lib.types.str;
                default = "ffffff";
                description = "Color of text in hexadecimal format [default: ffffff]";
              };
              textShadow = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Whether the text should be rendered with a shadow. Recommended, unless the background is really dark [default: true]";
              };
              title = lib.mkOption {
                type = lib.types.str;
                default = "betterloadingscreen:textures/transparent.png";
                description = "Path to logo/title resource [default: betterloadingscreen:textures/transparent.png]";
              };
              titlePos = lib.mkOption {
                type = lib.types.str;
                default = "[0, 0, 256, 256, 0, 50, 187, 145]";
                description = "an image, a transparent one if you want even. BLS provides 'transparent.png' [default: [0, 0, 256, 256, 0, 50, 187, 145]]";
              };
            };
          };
        };
        skepticism = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              salt = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "If you want to save a maximum of time on your loading time but don't want to face a black screen, try this. [default: false]";
              };
            };
          };
        };
        tips = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              baseTipsTextPos = lib.mkOption {
                type = lib.types.str;
                default = "BOTTOM_CENTER";
                description = "Note: Other elements use CENTER, if you really need, ask to implement this base position option for any other element. [default: BOTTOM_CENTER]";
              };
              customTipFilename = lib.mkOption {
                type = lib.types.str;
                default = "en_US";
                description = "Don't include the \".txt\". Example: \"myTipFile\" [default: en_US]";
              };
              tipsChangeFrequency = lib.mkOption {
                type = lib.types.int;
                default = 50;
                description = "Time in seconds between tip changes [range: 1 ~ 9000, default: 18]";
              };
              tipsEnabled = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set to true if you want to display random tips. Tips are stored in a separate file [default: true]";
              };
              tipsTextColor = lib.mkOption {
                type = lib.types.str;
                default = "ffffff";
                description = "Color of tips text in hexadecimal format [default: ffffff]";
              };
              tipsTextPos = lib.mkOption {
                type = lib.types.str;
                default = "[0, 10]";
                description = "Tips text position [default: [0, 5]]";
              };
              tipsTextShadow = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Whether the tips text should be rendered with a shadow. [default: true]";
              };
              useCustomTips = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Set to true if you want a custom tips file/different locale than your Minecraft one. [default: false]";
              };
            };
          };
        };
      };
    };
  };
}
