{lib, ...}: {
  coretweaks = lib.mkOption {
    description = "coretweaks configuration (./config/coretweaks.cfg)";
    default = {};
    type = lib.types.submodule {
      options = {
        path = lib.mkOption {
          type = lib.types.str;
          default = "./config/coretweaks.cfg";
          readOnly = true;
        };
        kind = lib.mkOption {
          type = lib.types.str;
          default = "forge";
          readOnly = true;
        };
        _categories = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              enableBugfixes = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set this to false to disable all features in the 'bugfixes' category. [default: true]";
              };
              enableDiagnostics = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set this to false to disable all features in the 'diagnostics' category. [default: true]";
              };
              enableOptimizations = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set this to false to disable all features in the 'optimizations' category. [default: true]";
              };
              enableTweaks = lib.mkOption {
                type = lib.types.bool;
                default = true;
                description = "Set this to false to disable all features in the 'tweaks' category. [default: true]";
              };
            };
          };
        };
        bugfixes = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              fix_display_list_delete = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    _enabled = lib.mkOption {
                      type = lib.types.str;
                      default = "true";
                      description = "Fixes graphical glitches that happen after recovering from a game crash, caused by world renderer display lists getting deleted but never reallocated. From 1.12. [default: true]";
                    };
                  };
                };
              };
              fix_double_eat = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    _enabled = lib.mkOption {
                      type = lib.types.str;
                      default = "true";
                      description = "Fixes an extra food item sometimes getting silently consumed (MC-849) [default: true]";
                    };
                  };
                };
              };
              fix_entity_tracking = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    _enabled = lib.mkOption {
                      type = lib.types.str;
                      default = "true";
                      description = "Backports most of https://github.com/MinecraftForge/MinecraftForge/pull/5160, a patch that fixes minecarts duplicating and vanishing. [default: true]";
                    };
                  };
                };
              };
              fix_forge_chat_link_crash = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    _enabled = lib.mkOption {
                      type = lib.types.str;
                      default = "true";
                      description = "Compatibility note: Not compatible with `fixUrlDetection` in Hodgepodge 1.6.14 and higher, which does the same (this feature will be disabled). [default: true]";
                    };
                  };
                };
              };
              fix_heightmap_range = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    _enabled = lib.mkOption {
                      type = lib.types.str;
                      default = "true";
                      description = "Compatibility note: Not compatible with LUMINA, which ostensibly accomplishes the same thing (this feature will be disabled). [default: true]";
                    };
                  };
                };
              };
              fix_intel_rendering = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    _enabled = lib.mkOption {
                      type = lib.types.str;
                      default = "true";
                      description = "Fixes rendering bug that causes the entire screen to get filled with a single color when using Intel drivers. Thanks to PheonixVX and TheMasterCaver for identifying the reason. [default: true]";
                    };
                    useAlternateIntelRenderingFix = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                      description = "Fix the rendering issue in an alternate, more intrusive way, which is how the fix was originally prescribed. Try enabling this if the issue still happens. [default: false]";
                    };
                  };
                };
              };
              fix_small_entity_swim = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    _enabled = lib.mkOption {
                      type = lib.types.str;
                      default = "true";
                      description = "Fixes bug in entity swimming code resulting in small entities (ones with hitboxes less than 0.8 units tall, such as DMod's foxes) being prone to drowning. [default: true]";
                    };
                  };
                };
              };
              forge_fix_logger_class_loading_error = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    _enabled = lib.mkOption {
                      type = lib.types.str;
                      default = "true";
                      description = "Fixes the NoClassDefFoundError that can occur when FML logs an exception originating from a coremod, losing the original exception in the process. This ostensibly happens due to a bug in the version of log4j that 1.7.10 ships with. [default: true]";
                    };
                  };
                };
              };
              gui_click_sound = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    _enabled = lib.mkOption {
                      type = lib.types.str;
                      default = "true";
                      description = "Fixes click sounds not playing in guis with scroll bars (e.g. the video settings screen). [default: true]";
                    };
                  };
                };
              };
              restore_travel_sound = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    _enabled = lib.mkOption {
                      type = lib.types.str;
                      default = "true";
                      description = "Restore interdimensional travel sound (travel.ogg). Fixes MC-233, fixed in 1.9 [default: true]";
                    };
                  };
                };
              };
              use_spawn_type_for_mob_cap = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    _enabled = lib.mkOption {
                      type = lib.types.str;
                      default = "false";
                      description = "Use the spawn type of mobs to determine which mob cap they should count towards, rather than their class. Fixes aquatic mobs spawning endlessly with certain mods. [default: false]";
                    };
                  };
                };
              };
            };
          };
        };
        diagnostics = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              detect_data_watcher_id_conflicts = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    _enabled = lib.mkOption {
                      type = lib.types.str;
                      default = "true";
                      description = "Emit warning when a mod registers a typed DataWatcher object in an already occupied ID slot (vanilla only warns in the typeless registration method). [default: true]";
                    };
                    detectDataWatcherIdConflictCulprit = lib.mkOption {
                      type = lib.types.bool;
                      default = false;
                      description = "Keep track of all registration stack traces, and print which ones conflict. Off by default because it adds some overhead to DataWatcher object registration. [default: false]";
                    };
                  };
                };
              };
              enhance_map_storage_errors = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    _enabled = lib.mkOption {
                      type = lib.types.str;
                      default = "true";
                      description = "Makes MapStorage's errors more informative. [default: true]";
                    };
                  };
                };
              };
            };
          };
        };
        optimizations = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              exclude_library_transformation = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    _enabled = lib.mkOption {
                      type = lib.types.str;
                      default = "true";
                      description = "Exclude libraries from being transformed. Speeds up startup slightly. This will break any mods that try to transform these libraries, though that's fairly unlikely. [default: true]";
                    };
                    excludeLibraryTransformationPackages = lib.mkOption {
                      type = lib.types.listOf lib.types.str;
                      default = [":resetOnLoad" "com.google.gson." "joptsimple." "io.netty." "gnu.trove." "kotlin."];
                      description = "(This list will be reset every time the config is loaded if the first element is ':resetOnLoad') [default: [:resetOnLoad], [com.google.gson.], [joptsimple.], [io.netty.], [gnu.trove.], [kotlin.]]";
                    };
                  };
                };
              };
              fast_default_resource_pack = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    _enabled = lib.mkOption {
                      type = lib.types.str;
                      default = "true";
                      description = "Cache the folders contained in DefaultResourcePacks. Makes the biggest difference in dev environments and on slow file systems (looking at you Windows). [default: true]";
                    };
                  };
                };
              };
              fast_folder_resource_pack = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    _enabled = lib.mkOption {
                      type = lib.types.str;
                      default = "true";
                      description = "Cache the file paths contained in folder resource packs. Eliminates the immense slowdown they add to the loading of large modpacks. [default: true]";
                    };
                  };
                };
              };
              forge_fast_deobfuscation_remapper = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    _enabled = lib.mkOption {
                      type = lib.types.str;
                      default = "true";
                      description = "Reduces the unnecessary work FMLDeobfuscationRemapper does when we are in a deobfuscated (i.e. development) environment. [default: true]";
                    };
                  };
                };
              };
              forge_fast_progress_bar = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    _enabled = lib.mkOption {
                      type = lib.types.str;
                      default = "true";
                      description = "Don't update progress bar on steps. Only active if splash is disabled. [default: true]";
                    };
                  };
                };
              };
              forge_fast_step_message_strip = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    _enabled = lib.mkOption {
                      type = lib.types.str;
                      default = "true";
                      description = "Don't strip unusual characters from bar step messages. Only active if splash is disabled. [default: true]";
                    };
                  };
                };
              };
              forge_fast_wildcard_transformers = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    _enabled = lib.mkOption {
                      type = lib.types.str;
                      default = "true";
                      description = "Makes Forge's wildcard class transformers (FluidIdTransformer and SideTransformer) more efficient. Might break mods that interact with the transformer list. [default: true]";
                    };
                  };
                };
              };
              forge_mod_discoverer_skip_known_libraries = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    _enabled = lib.mkOption {
                      type = lib.types.str;
                      default = "true";
                      description = "Skip over known libraries during Forge mod discovery. From Forge 1.12 (added in 1.9) [default: true]";
                    };
                  };
                };
              };
              jar_discoverer_cache = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    _enabled = lib.mkOption {
                      type = lib.types.str;
                      default = "true";
                      description = "Compatibility note: Not compatible with `jarDiscovererMemoryLeakFix` in FoamFix, which is a subset of this fix (we will attempt to disable their feature - if this fails, this feature will be disabled). [default: true]";
                    };
                    jarDiscovererCacheMaxAge = lib.mkOption {
                      type = lib.types.int;
                      default = 8;
                      description = "Maximum age (in runs) of elements in cache. If an element hasn't been used for more than this many runs, it will be discarded. Set to -1 for no limit. [range: -1 ~ 2147483647, default: 8]";
                    };
                  };
                };
              };
              optimize_get_pending_block_updates = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    _enabled = lib.mkOption {
                      type = lib.types.str;
                      default = "true";
                      description = "Compatibility note: Not compatible with OptiFine, which does the same thing (this feature will be disabled). [default: true]";
                    };
                  };
                };
              };
              tcp_no_delay = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    _enabled = lib.mkOption {
                      type = lib.types.str;
                      default = "true";
                      description = "Sets TCP_NODELAY to true, reducing network latency in multiplayer. Works on server as well as client. From Minecraft 1.12 (added in 1.8.1). [default: true]";
                    };
                  };
                };
              };
              transformer_cache = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    _enabled = lib.mkOption {
                      type = lib.types.str;
                      default = "true";
                      description = "Enable class transformer cache. [default: true]";
                    };
                    transformerCacheMode = lib.mkOption {
                      type = lib.types.str;
                      default = "LITE";
                      description = "* FULL: Cache the entire transformer chain. Reduces startup time further, but breaks with many mods. [default: LITE]";
                    };
                    full = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          badClasses = lib.mkOption {
                            type = lib.types.str;
                            default = "net.eq2online.macros.permissions.MacroModPermissions";
                            description = "[default: net.eq2online.macros.permissions.MacroModPermissions]";
                          };
                          badTransformers = lib.mkOption {
                            type = lib.types.str;
                            default = "org.spongepowered.asm.mixin.transformer.Proxy,appeng.transformer.asm.ApiRepairer,com.mumfrey.liteloader.transformers.ClassOverlayTransformer+";
                            description = "[default: org.spongepowered.asm.mixin.transformer.Proxy,appeng.transformer.asm.ApiRepairer,com.mumfrey.liteloader.transformers.ClassOverlayTransformer+]";
                          };
                          modFilesToIgnore = lib.mkOption {
                            type = lib.types.str;
                            default = "CMD files.jar";
                            description = "If your cache keeps getting rebuilt even though you haven't changed any mods, look for deranged mod files and add them to this list. [default: CMD files.jar]";
                          };
                          recentCacheSize = lib.mkOption {
                            type = lib.types.int;
                            default = 512;
                            description = "(Set to -1 to keep class bytecode in RAM forever) [range: -1 ~ 2147483647, default: 512]";
                          };
                          verbosity = lib.mkOption {
                            type = lib.types.int;
                            default = 1;
                            description = "* 2: Debug mode. Turn this on to log a bunch of stuff that can help find the cause of a crash. [range: 0 ~ 2, default: 1]";
                          };
                        };
                      };
                    };
                    lite = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          lateLiteTransformerCache = lib.mkOption {
                            type = lib.types.bool;
                            default = false;
                            description = "Initialize later using a safer method. Might improve compatibility at the cost of not caching early transformations. [default: false]";
                          };
                          liteTransformerCacheMaxSizeMB = lib.mkOption {
                            type = lib.types.int;
                            default = 128;
                            description = "Maximum size (in MB) of cache. If the cache grows larger than this, the least recently used entries will be discarded. Set to -1 for no limit. [range: -1 ~ 2147483647, default: 128]";
                          };
                          transformersToCache = lib.mkOption {
                            type = lib.types.listOf lib.types.str;
                            default = ["cpw.mods.fml.common.asm.transformers.DeobfuscationTransformer" "codechicken.core.asm.MCPDeobfuscationTransformer" "net.minecraftforge.classloading.FluidIdTransformer" "cpw.mods.fml.common.asm.transformers.SideTransformer" "cpw.mods.fml.common.asm.transformers.TerminalTransformer"];
                            description = "Canonical class names of the transformers that should be cached. [default: [cpw.mods.fml.common.asm.transformers.DeobfuscationTransformer], [codechicken.core.asm.MCPDeobfuscationTransformer], [net.minecraftforge.classloading.FluidIdTransformer], [cpw.mods.fml.common.asm.transformers.SideTransformer], [cpw.mods.fml.common.asm.transformers.TerminalTransformer]]";
                          };
                          useDiffsInTransformerCache = lib.mkOption {
                            type = lib.types.bool;
                            default = true;
                            description = "Disable this if you want to maximize speed at the cost of increased disk and memory usage. [default: true]";
                          };
                        };
                      };
                    };
                  };
                };
              };
              mods = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    fc_optimize_texture_upload = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          _enabled = lib.mkOption {
                            type = lib.types.str;
                            default = "true";
                            description = "Removes the call to GL11#getInteger in FastCraft's texture upload handler during texture stitching and uses a cached value instead. Fixes the slowness of texture stitching that happens when OptiFine and FastCraft are both present, and mipmapping is enabled. [default: true]";
                          };
                        };
                      };
                    };
                    of_optimize_world_renderer = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          _enabled = lib.mkOption {
                            type = lib.types.str;
                            default = "true";
                            description = "Replaces the reflection OptiFine uses to access Forge methods in WorldRenderer#updateRenderer with direct calls to those methods. Small speedup during chunk updates. [default: true]";
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
        tweaks = lib.mkOption {
          default = {};
          type = lib.types.submodule {
            options = {
              clamp_far_plane_distance = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    _enabled = lib.mkOption {
                      type = lib.types.str;
                      default = "true";
                      description = "If enabled, the distance of the view fustrum's far plane will be clamped above `minFarPlaneDistance`. Setting it to 180 or higher fixes clipping in OptiFine's custom skybox that happens when using lower render distances. [default: true]";
                    };
                    minFarPlaneDistance = lib.mkOption {
                      type = lib.types.float;
                      default = 180.0;
                      description = "See `clampFarPlaneDistance`. [range: 0.0 ~ 3.4028235E38, default: 180.0]";
                    };
                  };
                };
              };
              crash_handler = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    _enabled = lib.mkOption {
                      type = lib.types.str;
                      default = "false";
                      description = "Compatibility note: Not compatible BetterCrashes and CrashGuard, which do the same thing (this feature will be disabled). [default: true]";
                    };
                  };
                };
              };
              disable_fog = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    _enabled = lib.mkOption {
                      type = lib.types.str;
                      default = "false";
                      description = "Disables fog. Simple as. [default: false]";
                    };
                  };
                };
              };
              extend_sprint_time_limit = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    _enabled = lib.mkOption {
                      type = lib.types.str;
                      default = "false";
                      description = "In vanilla, the player can't sprint for longer than 30 seconds. This tweak increases this limit to be virtually infinite. Fixes MC-4839, fixed in 1.9 [default: true]";
                    };
                  };
                };
              };
              force_uncap_framerate = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    _enabled = lib.mkOption {
                      type = lib.types.str;
                      default = "false";
                      description = "EXPERIMENTAL: Uncaps framerate even when framelimiter is enabled. The framerate limit will only be used to decide how much time to spend updating chunks each frame. Vanilla Beta 1.7.3 behavior. It seems to make things worse though, at least with OptiFine. [default: false]";
                    };
                  };
                };
              };
              light_fix_stare = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    _enabled = lib.mkOption {
                      type = lib.types.str;
                      default = "true";
                      description = "Causes lighting updates around the block the player is looking at. A workaround for lighting errors that lets you fix them by staring at them. Useful in the Nether. [default: true]";
                    };
                  };
                };
              };
              main_menu_continue_button = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    _enabled = lib.mkOption {
                      type = lib.types.str;
                      default = "false";
                      description = "Add a button to the main menu that loads the last played world. (Button ID: -2026964516) [default: false]";
                    };
                  };
                };
              };
              tweak_cloud_height_check = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    _enabled = lib.mkOption {
                      type = lib.types.str;
                      default = "true";
                      description = "Compatibility note: Not compatible with NotFine, which has a setting to control the same thing (this feature will be disabled). [default: true]";
                    };
                    cloudHeightCheckMode = lib.mkOption {
                      type = lib.types.str;
                      default = "VARIABLE_CORRECTED";
                      description = "* ALWAYS_OPAQUE: Always render clouds as opaque [default: VARIABLE_CORRECTED]";
                    };
                  };
                };
              };
              uncap_create_world_gui_text_field_length = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    _enabled = lib.mkOption {
                      type = lib.types.str;
                      default = "false";
                      description = "Uncap max length for world name and world seed in the world creation GUI. (By default, it's capped at 32.) [default: false]";
                    };
                  };
                };
              };
              mods = lib.mkOption {
                default = {};
                type = lib.types.submodule {
                  options = {
                    of_fix_update_renderers_return_value = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          _enabled = lib.mkOption {
                            type = lib.types.str;
                            default = "false";
                            description = "Fixes OptiFine's implementation of updateRenderers returning the opposite value of what it should (probably a bug). Only effective when framerate limiter is enabled. Speeds up chunk updates significantly, and increases framerate when there aren't many chunk updates. However, during heavy chunk updating (e.g. when loading a world) it decreases the framerate as a side effect of not being as lazy. [default: false]";
                          };
                        };
                      };
                    };
                    of_unlock_custom_sky_min_render_distance = lib.mkOption {
                      default = {};
                      type = lib.types.submodule {
                        options = {
                          _enabled = lib.mkOption {
                            type = lib.types.str;
                            default = "true";
                            description = "Allows custom sky rendering in OptiFine D6 when using a render distance lower than 8. [default: true]";
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
