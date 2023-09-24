---
sidebar_label: Libs
title: Libs
description: Libs
hide_title: true
---

# LIBS

| LIB                  | DESCRIPTION                                        | USAGE                                                                                      |      DEPENDENCIES      |
| :------------------- | :------------------------------------------------- | :----------------------------------------------------------------------------------------- | :--------------------: |
| `RAWRBOX.RENDER`     | Rendering lib (aka, contains window, stencil, etc) | Contains window, stencil, model / texture loading. Basically anything related to rendering |   `ENGINE` & `MATH`    |
| `RAWRBOX.MATH`       | Math lib                                           | Contains vector, color and other math related classes                                      |                        |
| `RAWRBOX.BASS`       | Bass lib (aka sound loading)                       | Loads sounds using the BASS lib, supports 3D & http sound streaming                        |   `ENGINE` & `MATH`    |
| `RAWRBOX.UTILS`      | Utils lib                                          | Utils for game development                                                                 |                        |
| `RAWRBOX.ENGINE`     | Engine lib (aka game loop)                         | The engine it self, contains the game loop mechanism                                       |        `UTILS`         |
| `RAWRBOX.UI`         | UI lib                                             | UI components lib                                                                          | `RENDER` & `RESOURCES` |
| `RAWRBOX.RESOURCES`  | Resources manager lib                              | Resource manager. Handles loading and stores the pointers for easy access                  |        `UTILS`         |
| `RAWRBOX.PHYSICS.3D` | 3D Physics lib                                     | Handles 3D physics                                                                         |   `ENGINE` & `MATH`    |
| `RAWRBOX.PHYSICS.2D` | 2D Physics lib                                     | Handles 2D physics                                                                         |   `ENGINE` & `MATH`    |
| `RAWRBOX.ASSIMP`     | Assimp lib                                         | Handles assimp model loading                                                               | `RENDER` & `RESOURCES` |
| `RAWRBOX.WEBM`       | WEBM lib                                           | Handles webm loading                                                                       | `RENDER` & `RESOURCES` |
| `RAWRBOX.SCRIPTING`  | Scripting lib                                      | Handles lua & mod loading                                                                  |   `ENGINE` & `MATH`    |
| `RAWRBOX.NETWORK`    | Networking lib                                     | Handles networking                                                                         |                        |

<br/>

<p align="center">
  <img src="https://github.com/edunad/rawrbox/raw/master/RAWBOX%20-%20Dependencies.png" />
</p>

<br/>
