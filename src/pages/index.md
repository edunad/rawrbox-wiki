---
title: DEV WIKI
---

<h2>
	<p align="center">
		<img src="./img/rawrbox.svg" width="300" /><br/>
		<a href="https://github.com/edunad/rawrbox">RawrBox</a> - PSX..ish game engine<br/>
	</p>
</h2>

<h4>
	<p align="center">
		<img src="https://github.com/edunad/rawrbox/actions/workflows/build.yml/badge.svg?branch=master&event=push"/>&nbsp;
		<img src="https://img.shields.io/github/license/edunad/rawrbox.svg"/>&nbsp;
		<img src="https://img.shields.io/github/issues/edunad/rawrbox/BUG.svg"/>&nbsp;
		<img src="https://img.shields.io/github/last-commit/edunad/rawrbox.svg"/>
	</p>
</h4>

# FEATURES

-   Model loading (animations, light, texture, blend shapes) using [assimp](https://github.com/assimp/assimp)
-   Light support (point, spot, directional)
-   Clustered rendering & support for other type of rendering
-   3D text
-   2D stencil drawing
-   Fonts (ttf) using [stb](https://github.com/nothings/stb)
-   JSON loading using [nlohmann json](https://github.com/nlohmann/json)
-   Images loading (png, jpeg, tga, bitmap, gif) using [stb](https://github.com/nothings/stb), SVG using [lunasvg](https://github.com/sammycage/lunasvg), WEBP using [libwebp](https://github.com/webmproject/libwebp)
-   Video only using [webm](https://github.com/webmproject/libwebm)
-   Sounds using [BASS](https://www.un4seen.com/) lib
-   Custom UI
-   Material system (similar to unity)
-   Vulkan / DirectX / OpenGL support using [BGFX](https://github.com/bkaradzic/bgfx)
-   Linux Wayland support + steam deck support
-   3D Physics system using [JoltPhysics](https://github.com/jrouwe/JoltPhysics)
-   2D Physics system using [Muli](https://github.com/Sopiro/Muli)
-   Decal system
-   Instancing support
-   Scripting / modding support with LUA using [sol2](https://github.com/ThePhD/sol2) and [luajit2](https://github.com/openresty/luajit2)
-   Post-processing effects support
-   HTTP / HTTPS requests using curl + [libcpr](https://github.com/libcpr/cpr)
-   Packet networking support
-   Settings support
-   Custom dev console (with support for custom commands)
-   I18N (internationalization) support
-   GPU picking

# TODO LIST

-   Add animation blending
-   Add lights shadow maps
