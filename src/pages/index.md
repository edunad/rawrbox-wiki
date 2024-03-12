---
title: DEV WIKI
---

<h2>
	<p align="center">
		<img src="./img/rawrbox.svg" width="300" /><br/>
		<a href="https://github.com/edunad/rawrbox">RawrBox</a> - PSX..ish game engine
	</p>
</h2>
<h4>
	<p align="center">
		<img src="https://github.com/edunad/rawrbox/actions/workflows/build.yml/badge.svg?branch=master&event=push"/>&nbsp;
		<img src="https://img.shields.io/github/license/edunad/rawrbox.svg"/>&nbsp;
		<img src="https://img.shields.io/github/issues/edunad/rawrbox/BUG.svg"/>&nbsp;
		<img src="https://img.shields.io/github/last-commit/edunad/rawrbox.svg"/>&nbsp;
		<br/>
		<a href="#features">Features</a> -
		<a href="#libs">Libs</a> -
		<a href="#building">Building</a> -
		<a href="#samples">Samples</a>
	</p>
</h4>

<p align="center">
	<a href="https://github.com/edunad/rawrbox-template"><img src="./img/RAWRBOX-TEMPLATE.png" width="256" /></a><br/>
</p>

# FEATURES

-   Model loading (animations, light, texture, blend shapes) using [assimp](https://github.com/assimp/assimp)
-   Light support (point, spot, directional)
-   Support for rendering plugins (like clustered rendering, post processing, etc)
-   3D text
-   Bindless rendering
-   2D stencil drawing
-   Fonts (ttf) using [stb](https://github.com/nothings/stb)
-   JSON loading using [glaze](https://github.com/stephenberry/glaze)
-   Images loading (png, jpeg, tga, bitmap, gif) using [stb](https://github.com/nothings/stb), SVG using [lunasvg](https://github.com/sammycage/lunasvg), WEBP using [libwebp](https://github.com/webmproject/libwebp)
-   Video only using [webm](https://github.com/webmproject/libwebm)
-   Sounds using [BASS](https://www.un4seen.com/) lib
-   Custom UI support
-   Material system (similar to unity)
-   Vulkan / DirectX / OpenGL support using [Diligent](https://github.com/DiligentGraphics/DiligentCore)
-   Linux Wayland support + steam deck support
-   3D Physics system using [JoltPhysics](https://github.com/jrouwe/JoltPhysics)
-   2D Physics system using [Muli](https://github.com/Sopiro/Muli)
-   Decal system
-   Instancing support
-   Scripting / modding support with LUA using [luabridge3](https://github.com/kunitoki/LuaBridge3) and [luau](https://github.com/luau-lang/luau)
-   Post-processing effects support
-   HTTP / HTTPS requests using curl + [libcpr](https://github.com/libcpr/cpr)
-   Packet networking support
-   Custom dev console (with support for custom commands)
-   I18N (internationalization) support
-   GPU picking

# TODO LIST

-   Particle engine
-   Add animation blending
-   Add lights shadow maps
