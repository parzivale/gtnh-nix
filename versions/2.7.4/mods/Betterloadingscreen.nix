{lib, ...}: {
  betterloadingscreen_cfg = lib.mkOption {
    description = "betterloadingscreen_cfg configuration (./config/Betterloadingscreen/betterloadingscreen.cfg)";
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
            type = lib.types.str;
            default = "0.05";
            description = "Float from 0 to 1. The amount of alpha that is removed from the original image and added to the image that comes after.
Also defined smoothnes of animation. Don't set this too low this time or you'll add time to your pack loading. Probably 0.01 still is too low. [range: 0.0 ~ 1.0, default: 0.01]";
          };
          backgroundChanging = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = "Whether backgrounds should change randomly during loading. They are taken from the random background list [default: true]";
          };
          changeFrequency = lib.mkOption {
            type = lib.types.int;
            default = 20;
            description = "Wach how many seconds the background should change [range: 1 ~ 9000, default: 40]";
          };
          shouldGLClear = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "No, don't touch that! [default: false]";
          };
          threadSleepTime = lib.mkOption {
            type = lib.types.int;
            default = 20;
            description = "Time in milliseconds between each image change (smooth blend).
The animation runs on the main thread (because OpenGL bruh momento), so setting this higher than
default is not recommended (basically: if image transition running, your mods not loading) [range: 0 ~ 9000, default: 20]";
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
            description = "If this is true, it will conect to drone.io to get a changelog.
Note: this repo is down. [default: false]";
          };
          font = lib.mkOption {
            type = lib.types.str;
            default = "textures/font/ascii.png";
            description = "What font texture to use? Special Cases:
- If you use the Russian mod \"Client Fixer\" then change this to \"textures/font/ascii_fat.png\"
Note: if a resourcepack adds a font, it will be used by CLS. [default: textures/font/ascii.png]";
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
            description = "Whether or not to use minecraft's display to show the progress. This looks better, but there is a possibilty of not being compatible, so if you do have any strange crash reports or compatability issues, try setting this to false
Note: IIRC, setting this to false makes the screen black [default: true]";
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
            description = "Link to the imgur gallery [default: https://imgur.com/gallery/Ks0TrYE]";
          };
          useImgur = lib.mkOption {
            type = lib.types.bool;
            default = false;
            description = "Set to true if you want to load images from an imgur gallery and use them as backgrounds. WIP, not working yet [default: true]";
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
            description = "Path to background resource.
You can use a resourcepack or resource loader for custom resources. [default: betterloadingscreen:textures/backgrounds/background1.png]";
          };
          backgroundList = lib.mkOption {
            type = lib.types.str;
            default = "{betterloadingscreen:textures/backgrounds/background1.png, betterloadingscreen:textures/backgrounds/background2.png, betterloadingscreen:textures/backgrounds/background3.png, betterloadingscreen:textures/backgrounds/background4.png, betterloadingscreen:textures/backgrounds/background5.png, betterloadingscreen:textures/backgrounds/background6.png, betterloadingscreen:textures/backgrounds/background7.png, betterloadingscreen:textures/backgrounds/background8.png, betterloadingscreen:textures/backgrounds/background9.png, betterloadingscreen:textures/backgrounds/background10.png, betterloadingscreen:textures/backgrounds/background11.png, betterloadingscreen:textures/backgrounds/background12.png, betterloadingscreen:textures/backgrounds/background14.png, betterloadingscreen:textures/backgrounds/background15.png, betterloadingscreen:textures/backgrounds/background16.png, betterloadingscreen:textures/backgrounds/background17.png, betterloadingscreen:textures/backgrounds/background18.png, betterloadingscreen:textures/backgrounds/background19.png, betterloadingscreen:textures/backgrounds/background20.png, betterloadingscreen:textures/backgrounds/background13.png, betterloadingscreen:textures/backgrounds/background21.png, betterloadingscreen:textures/backgrounds/background22.png, betterloadingscreen:textures/backgrounds/background23.png, betterloadingscreen:textures/backgrounds/background24.png, betterloadingscreen:textures/backgrounds/background25.png, betterloadingscreen:textures/backgrounds/background26.png, betterloadingscreen:textures/backgrounds/background27.png, betterloadingscreen:textures/backgrounds/background28.png, betterloadingscreen:textures/backgrounds/background29.png, betterloadingscreen:textures/backgrounds/background30.png, betterloadingscreen:textures/backgrounds/background31.png, betterloadingscreen:textures/backgrounds/background32.png, betterloadingscreen:textures/backgrounds/background33.png, betterloadingscreen:textures/backgrounds/background34.png, betterloadingscreen:textures/backgrounds/background35.png}";
            description = "List of paths to backgrounds that will be used if randomBackgrounds is true.
The paths must be separated by commas.
[default: {betterloadingscreen:textures/backgrounds/background1.png, betterloadingscreen:textures/backgrounds/background2.png}]";
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
            description = "Main loading bar text position. The four values are for positon. [default: [0, -30]]";
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
            description = "Main loading bar percentage position [default: [0, -75]]";
          };
          materialProgressBarTextPos = lib.mkOption {
            type = lib.types.str;
            default = "[0, -65]";
            description = "Main loading bar text position. The two values are for positon (x and y). [default: [0, -65]]";
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
            description = "Logo coordinates in image and position.
the first four values indicate where the logo is located on the image (you could use a spritesheet), the four next ones tell where the image will be located on screen
like this: [xLocation, yLocation, xWidth, yWidth, xLocation, yLocation, xWidth, yWidth]
The same is used for other images, except the background, which is fullscreen. Please ALWAYS provide an image, a transparent one if you want even.
CLS provides 'transparent.png'
If you really insist ping me and I'll look if I can add an image or so. jackowski626#0522 [default: [0, 0, 256, 256, 0, 50, 187, 145]]";
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
            description = "Base text position. Can be TOP_CENTER, TOP_RIGHT, CENTER_LEFT, CENTER, CENTER_RIGHT, BOTTOM_LEFT, BOTTOM_CENTER or BOTTOM_RIGHT.
Note: Other elements use CENTER, if you really need, ask to implement this base poition option for any other element. [default: BOTTOM_CENTER]";
          };
          customTipFilename = lib.mkOption {
            type = lib.types.str;
            default = "en_US";
            description = "Custom tips file name, place it in config/Betterloadingscreen/tips.
Don't include the \".txt\". Example: \"myTipFile\" [default: en_US]";
          };
          tipsChangeFrequency = lib.mkOption {
            type = lib.types.int;
            default = 50;
            description = "Time in seconds between tip change [range: 1 ~ 9000, default: 18]";
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
