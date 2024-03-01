---
sidebar_label: 💾 CMAKE Options
title: 💾 CMAKE Options
description: 💾 CMAKE Options
hide_title: true
---

# CMAKE OPTIONS

| OPTION NAME                                | NOTE                                                                                               |
| :----------------------------------------- | :------------------------------------------------------------------------------------------------- |
| `RAWRBOX_BUILD_TESTING`                    | Builds & enables project tests                                                                     |
| `RAWRBOX_BUILD_SAMPLES`                    | Builds the project sample                                                                          |
| --                                         | --                                                                                                 |
| `RAWRBOX_CONTENT_FOLDER`                   | The content folder to output assets. Default is `assets`                                           |
| --                                         | --                                                                                                 |
| `RAWRBOX_USE_WAYLAND`                      | Enables WAYLAND compiling on LINUX                                                                 |
| --                                         | --                                                                                                 |
| `RAWRBOX_BUILD_RAWRBOX_UI`                 | Builds and includes ui                                                                             |
| `RAWRBOX_BUILD_RAWRBOX_RESOURCES`          | Builds and resouces manager (aka handling and storing loaded resources)                            |
| `RAWRBOX_BUILD_RAWRBOX_3D_PHYSICS`         | Builds the 3D physics engine                                                                       |
| `RAWRBOX_BUILD_RAWRBOX_2D_PHYSICS`         | Builds the 2D physics engine                                                                       |
| `RAWRBOX_BUILD_RAWRBOX_BASS`               | Enables BASS support. ⚠️ [BASS IS ONLY FREE FOR OPEN SOURCE PROJECTS](https://www.un4seen.com/) ⚠️ |
| `RAWRBOX_BUILD_RAWRBOX_ASSIMP`             | Enables assimp model loading                                                                       |
| `RAWRBOX_BUILD_RAWRBOX_WEBM`               | Enables WEBM loading                                                                               |
| `RAWRBOX_BUILD_RAWRBOX_NETWORK`            | Builds network support                                                                             |
| `RAWRBOX_BUILD_RAWRBOX_SCRIPTING`          | Enables lua & modding support                                                                      |
| `RAWRBOX_BUILD_RAWRBOX_SCRIPTING_UNSAFE`   | Enables io support on lua (loading and saving files on the data folder)                            |
| `RAWRBOX_BUILD_QHULL`                      | Builds QHull util                                                                                  |
| --                                         | --                                                                                                 |
| `RAWRBOX_BUILD_MSVC_MULTITHREADED_RUNTIME` | Builds libraries with MSVC Multithreaded runtime (Auto-enabled if jolt is used)                    |
| --                                         | --                                                                                                 |
| `RAWRBOX_DISABLE_SUPPORT_DX12`             | Disable dx12 support                                                                               |
| `RAWRBOX_DISABLE_SUPPORT_VULKAN`           | Disable vulkan support                                                                             |
| --                                         | --                                                                                                 |
| `RAWRBOX_DEV_MODE`                         | Enables all the modules, used for rawrbox development                                              |
