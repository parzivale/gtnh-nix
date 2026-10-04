{ lib, ... }:
{
  lwjgl3ify_cfg = lib.mkOption {
    description = "lwjgl3ify_cfg configuration (./config/lwjgl3ify.cfg)";
    default = { };
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
          type = lib.types.str;
          default = "./config/lwjgl3ify.cfg";
          readOnly = true;
        };
        kind = lib.mkOption {
          type = lib.types.str;
          default = "forge";
          readOnly = true;
        };
        core = lib.mkOption {
          default = { };
          type = lib.types.submodule {
            options = {
              showJavaVersion = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Show java version in the debug hud [default: true]";
              };
              showLwjglVersion = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Show lwjgl version in the debug hud [default: true]";
              };
            };
          };
        };
        debug = lib.mkOption {
          default = { };
          type = lib.types.submodule {
            options = {
              printKeyEvents = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Print keyboard-related events to the log [default: false]";
              };
              printMouseEvents = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Print mouse-related events to the log [default: false]";
              };
              printWindowEvents = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Print window-related events to the log [default: false]";
              };
              registerOpenGLLogger = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Register an OpenGL debug handler that can log OpenGL errors and performance warnings [default: false]";
              };
            };
          };
        };
        input = lib.mkOption {
          default = { };
          type = lib.types.submodule {
            options = {
              altGrEscapeCodes = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Allows AltGr use in Ctrl+key special key combinations (disables text character input handling when AltGr is pressed) [default: false]";
              };
              alwaysRepeatKeys = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Always create repeat key press events when a key is held, instead of letting the game control the setting at runtime. [default: false]";
              };
              ctrlAltText = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Allow text character input when Ctrl+Left Alt are pressed (disables special escape code handling for this combination of keys) [default: false]";
              };
              forceDiscreteScrolling = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Forces all scrolling events to receive a discrete mouse wheel value, this can fix problems when scrolling doesn't change slot [default: false]";
              };
              invertHorizontalScroll = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Invert horizontal scrolling direction (respects invertScrollWheel) [default: false]";
              };
              invertScrollWheel = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Invert scrolling direction [default: false]";
              };
              rawMouseInput = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Use raw (unaccelerated) mouse input [default: false]";
              };
              scrollSpeedMultiplier = lib.mkOption {
                type = lib.types.str;
                default = "1.0";
                description = "Scrolling speed multiplier [range: 0.05 ~ 20.0, default: 1.0]";
              };
            };
          };
        };
        mixin = lib.mkOption {
          default = { };
          type = lib.types.submodule {
            options = {
              stbiIgnoreFastcraft = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Force-enable the STB mixins even if FastCraft is present, may lead to a rapidly flashing screen and other visual artifacts [default: false]";
              };
              stbiTextureLoading = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Use the faster spng-based texture loader [default: true]";
              };
              stbiTextureStitching = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Use the much faster stb_rectpack-based texture stitcher [default: true]";
              };
            };
          };
        };
        openalcontext = lib.mkOption {
          default = { };
          type = lib.types.submodule {
            options = {
              enableHRTF = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enable HRTF sound support [default: false]";
              };
            };
          };
        };
        openglcontext = lib.mkOption {
          default = { };
          type = lib.types.submodule {
            options = {
              debugContext = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enable KHR_debug in the OpenGL context for advanced debugging capabilities [default: false]";
              };
              doubleBuffer = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Make the framebuffer double-buffered (will cause visual artifacts if disabled) [default: true]";
              };
              noError = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Enable GL_KHR_no_error to use faster driver code, but which can cause memory corruption in case of OpenGL errors [default: false]";
              };
              sharedContext = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Create a hidden GL context shared with the main one, used by the loading splash thread. Disable on mobile / OpenGL ES drivers that do not support shared contexts. [default: true]";
              };
              srgb = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Make the framebuffer use the sRGB color space [default: false]";
              };
            };
          };
        };
        window = lib.mkOption {
          default = { };
          type = lib.types.submodule {
            options = {
              appId = lib.mkOption {
                type = lib.types.str;
                default = "com.gtnewhorizons.Lwjgl3ifyMinecraft";
                description = "Changes the application ID used for categorizing windows in window managers, saving per-app settings etc. [default: com.gtnewhorizons.Lwjgl3ifyMinecraft]";
              };
              borderless = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Should exclusive fullscreen mode replaced with borderless fullscreen mode [default: false]";
              };
              borderlessWindowsCompatibility = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Windows-only - should borderless window have height increased by 1 to solve flickering on un-focusing [default: true]";
              };
              centered = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Start centered? [default: true]";
              };
              cocoaFrameName = lib.mkOption {
                type = lib.types.str;
                default = "minecraft";
              };
              decorated = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Should the window have decorations (titlebar, border, close button) [default: true]";
              };
              focused = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Start focused? [default: true]";
              };
              hidpiRendering = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Enables high DPI rendering in the window, make sure to increase your GUI scale in options if enabled [default: true]";
              };
              iconified = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Start iconified? [default: false]";
              };
              linuxCreateAppDesktopEntry = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "On Linux only, creates a hidden .desktop file in your XDG_DATA_HOME/applications folder matching the appId to improve Wayland support [default: true]";
              };
              maximized = lib.mkOption {
                type = lib.types.bool;
                default = false;
                description = "Start maximized? [default: false]";
              };
              showLoadingProgress = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Show game loading progress in the task bar on supported systems [default: true]";
              };
              waylandAppId = lib.mkOption {
                type = lib.types.str;
                default = "minecraft";
              };
              x11ClassName = lib.mkOption {
                type = lib.types.str;
                default = "minecraft";
              };
            };
          };
        };
      };
    };
  };
}
