---
sidebar_label: Dependencies
title: Dependencies
description: Dependencies
hide_title: true
---

# Dependencies

| LIB                 | NOTE                                                |
| :------------------ | :-------------------------------------------------- |
| bgfx                |                                                     |
| bx                  | Required by `bgfx`                                  |
| glfw                |                                                     |
| nlohmann_json       | Used for JSON loading                               |
| fmt                 | Used for text formatting                            |
| utfcpp              | Used for utf support                                |
| stb/image           | Used for loading images (png,gif,jpeg)              |
| stb/image_write     | Used for writting images                            |
| stb/freetype        | Used for loading fonts                              |
| thread-pool         | Used for managing async threading                   |
| qhull               | Used for calculating convex hulls from given points |
| assimp              | Used for loading models                             |
| catch2              | Used for testing                                    |
| bass                | Used for loading sounds                             |
| JoltPhysics         | Used for managing 3D physics                        |
| muli                | Used for managing 2D physics                        |
| webmlib & vpx       | Used for loading webm                               |
| lua & sol2 & luajit | Used for loading & managing lua scripting           |
| curl + libcpr       | Used for HTTP / HTTPS requests                      |
| lunasvg             | Used for SVG loading                                |
| libwebp             | Used for WEBP loading                               |
