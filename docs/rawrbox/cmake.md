---
sidebar_label: 💾 CMAKE Options
title: 💾 CMAKE Options
description: 💾 CMAKE Options
hide_title: true
---


# CMAKE OPTIONS

| OPTION NAME                                | NOTE                                                                                               | DEFAULT |
| :----------------------------------------- | :------------------------------------------------------------------------------------------------- | ------- |
| `RAWRBOX_BUILD_TESTING`                    | Builds & enables project tests                                                                     | OFF     |
| `RAWRBOX_BUILD_SAMPLES`                    | Builds the project sample                                                                          | OFF     |
| --                                         | --                                                                                                 | --      |
| `RAWRBOX_CONTENT_FOLDER`                   | The content folder to output assets. Default is `assets`                                           | OFF     |
| --                                         | --                                                                                                 | --      |
| `RAWRBOX_USE_WAYLAND`                      | Enables WAYLAND compiling on LINUX                                                                 | OFF     |
| --                                         | --                                                                                                 | --      |
| `RAWRBOX_BUILD_RAWRBOX_RENDER`             | Builds and the renderer, disable for renderless programs                                           | ON      |
| `RAWRBOX_BUILD_RAWRBOX_UI`                 | Builds rawrbox ui (alternative to imgui)                                                           | OFF     |
| `RAWRBOX_BUILD_RAWRBOX_RESOURCES`          | Builds the resouces manager (aka handling and storing loaded resources)                            | OFF     |
| `RAWRBOX_BUILD_RAWRBOX_3D_PHYSICS`         | Builds the 3D physics engine                                                                       | OFF     |
| `RAWRBOX_BUILD_RAWRBOX_2D_PHYSICS`         | Builds the 2D physics engine                                                                       | OFF     |
| `RAWRBOX_BUILD_RAWRBOX_BASS`               | Enables BASS support. ⚠️ [BASS IS ONLY FREE FOR OPEN SOURCE PROJECTS](https://www.un4seen.com/) ⚠️ | OFF     |
| `RAWRBOX_BUILD_RAWRBOX_GLTF`               | Enables gltf2.0 model loading support                                                              | OFF     |
| `RAWRBOX_BUILD_RAWRBOX_WEBM`               | Enables WEBM loading                                                                               | OFF     |
| `RAWRBOX_BUILD_RAWRBOX_NETWORK`            | Builds network support                                                                             | OFF     |
| `RAWRBOX_BUILD_RAWRBOX_IMGUI`              | Builds imgui support                                                                               | OFF     |
| --                                         | --                                                                                                 | --      |
| `RAWRBOX_BUILD_RAWRBOX_SCRIPTING`          | Enables lua & modding support                                                                      | OFF     |
| `RAWRBOX_SCRIPTING_UNSAFE`                 | Enables io support on lua (loading and saving files on the data folder)                            | OFF     |
| `RAWRBOX_SCRIPTING_EXCEPTION`              | Enables scripting throwing exceptions instead of catching them                                     | OFF     |
| `RAWRBOX_SCRIPTING_WORKSHOP_MODDING`       | Enables workshop utilities (useful for steam workshop / mod.io)                                    | OFF     |
| --                                         | --                                                                                                 | --      |
| `RAWRBOX_BUILD_RAWRBOX_STEAMWORKS`         | Enables steamworks support                                                                         | OFF     |
| `STEAMWORKS_APPID`                         | Sets the steamworks appid                                                                          | OFF     |
| --                                         | --                                                                                                 | --      |
| `RAWRBOX_BUILD_QHULL`                      | Builds QHull util                                                                                  | OFF     |
| --                                         | --                                                                                                 | --      |
| `RAWRBOX_BUILD_MSVC_MULTITHREADED_RUNTIME` | Builds libraries with MSVC Multithreaded runtime (Auto-enabled if jolt is used)                    | OFF     |
| --                                         | --                                                                                                 | --      |
| `RAWRBOX_DISABLE_SUPPORT_DX12`             | Disable dx12 support                                                                               | OFF     |
| `RAWRBOX_DISABLE_SUPPORT_VULKAN`           | Disable vulkan support                                                                             | OFF     |
| --                                         | --                                                                                                 | --      |
| `RAWRBOX_DEV_MODE`                         | Enables all the modules, used for rawrbox development                                              | OFF     |
| --                                         | --                                                                                                 | --      |
| `RAWRBOX_TRACE_EXCEPTIONS`                 | Enables exception tracing                                                                          | ON      |
| `RAWRBOX_INTERPROCEDURAL_OPTIMIZATION`     | Enables IPO compilation on release                                                                 | ON      |
