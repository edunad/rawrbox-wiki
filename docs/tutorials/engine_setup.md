---
sidebar_label: 2. Engine Setup
title: Engine Setup
description: Engine Setup
hide_title: true
---

# Engine Setup

1. Create a `main.cpp` as your app entry file

Example:

```cpp
#ifdef _WIN32
	#include <windows.h>
#endif

#include <my_game/engine.hpp>

int main(int /*argc*/, char* /*argv*/[]) {
#ifdef _WIN32
	SetConsoleTitle("My Game");
	SetConsoleCP(CP_UTF8);
	SetConsoleOutputCP(CP_UTF8);
#endif

	my_game::Engine engine;
	engine.setFPS(66); // This controls the max FPS
	engine.setTPS(66); // This controls the max update ticks, it's mainly used for physics and other tick specific updates
	engine.run(); // Start the game

	return 0;
}

```

2. Create a `game.hpp` inside your my_game folder

```cpp
#pragma once

#include <rawrbox/engine/engine.hpp>

namespace my_game {
	class Game : public rawrbox::Engine {
	protected:
		void setupGLFW() override;
		void init() override;

		void onThreadShutdown(rawrbox::ENGINE_THREADS thread) override;
		void pollEvents() override;
		void update() override;
		void fixedUpdate() override;

		void draw() override;

		void loadContent();

	public:
		Game() = default;
		Game(const Game&) = delete;
		Game(Game&&) = delete;
		Game& operator=(const Game&) = delete;
		Game& operator=(Game&&) = delete;
		~Game() override = default;
	};
} // namespace tombmaker
```

3. Create a `game.cpp`

```cpp

#include <rawrbox/render/cameras/orbital.hpp>
#include <rawrbox/render/plugins/clustered.hpp>
#include <rawrbox/render/resources/font.hpp>
#include <rawrbox/render/resources/texture.hpp>
#include <rawrbox/resources/manager.hpp>
#include <rawrbox/engine/static.hpp>

#include <my_game/game.hpp>

namespace my_game {
	void Engine::setupGLFW() {
#if defined(_DEBUG) && defined(RAWRBOX_SUPPORT_DX12)
		auto* window = rawrbox::Window::createWindow(Diligent::RENDER_DEVICE_TYPE_D3D12); // DX12 is faster on DEBUG than Vulkan, due to vulkan having extra check steps to prevent you from doing bad things
#else
		auto* window = rawrbox::Window::createWindow();
#endif
		window->setMonitor(-1);
		window->setTitle("My Game");
#ifdef _DEBUG
		window->init(1024, 768, rawrbox::WindowFlags::Window::WINDOWED);
#else
		window->init(0, 0, rawrbox::WindowFlags::Window::BORDERLESS);
#endif
		window->onWindowClose += [this](auto& /*w*/) { this->shutdown(); };
	}

	void Engine::init() {
		auto* window = rawrbox::Window::getWindow();

		// Setup renderer
		auto* render = window->createRenderer(rawrbox::Color::RGBAHex(0x443355FF)); // Clear color
		render->addPlugin<rawrbox::ClusteredPlugin>(); // Add clustered plugin, this adds support for light & decals
		render->onIntroCompleted = [this]() { this->loadContent(); }; // Start loading content when the intro is complete
		render->setDrawCall([this](const rawrbox::DrawPass& pass) {
			if (pass == rawrbox::DrawPass::PASS_OVERLAY) {
				// Draw overlay
			} else if (pass == rawrbox::DrawPass::PASS_WORLD) {
				// Draw world
			}
		});
		// ---------------


		// Setup camera
		auto* cam = render->setupCamera<rawrbox::CameraOrbital>(*window);
		cam->setPos({0.F, 5.F, -5.F});
		cam->setAngle({0.F, rawrbox::MathUtils::toRad(-45), 0.F, 0.F});
		// --------------

		// Setup resources
		rawrbox::RESOURCES::addLoader<rawrbox::FontLoader>(); // Add loaders for the files we want to import
		rawrbox::RESOURCES::addLoader<rawrbox::AssimpLoader>();
		rawrbox::RESOURCES::addLoader<rawrbox::TextureLoader>();
		// --------------

		render->init();
	}

	void Engine::loadContent() {
		std::vector<std::pair<std::string, uint32_t>> initialContentFiles = {
		    {"./assets/fonts/trcn.ttf", 0},
		};

		rawrbox::RESOURCES::loadListAsync(initialContentFiles, [this]() {
			rawrbox::runOnRenderThread([this]() {
				// Content loaded, proceed with showing the game...
			});
		});
	}

	void Engine::onThreadShutdown(rawrbox::ENGINE_THREADS thread) {
		if (thread == rawrbox::ENGINE_THREADS::THREAD_INPUT) {
			rawrbox::Window::shutdown();
		} else {
			// Other things you want to cleanup, like pointers
			rawrbox::RESOURCES::shutdown();
		}
	}

	void Engine::pollEvents() {
		rawrbox::Window::pollEvents();
	}

	void Engine::update() {
		rawrbox::Window::update();
	}

	void Engine::fixedUpdate() {
        // tick based update
	}

	void Engine::draw() {
		// This should be the only method you need to call, unless you want to do something specific outside of the renderer base
		rawrbox::Window::render(); // Draw world, overlay & commit primitives
	}
}
```

# Done!

## Check [SAMPLES](../samples.md) for examples!
