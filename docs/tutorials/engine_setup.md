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

2. Create a `engine.hpp` inside your my_game folder

```cpp
#pragma once

#include <rawrbox/engine/engine.hpp>
#include <rawrbox/render/window.hpp>
#include <rawrbox/ui/root.hpp>

#include <atomic>

namespace my_game {
	class Engine : public rawrbox::Engine {
	protected:
		std::unique_ptr<rawrbox::Window> _window = nullptr;
		std::atomic<int> _loadingFiles = 0; // Used for content loading tracking

		void setupGLFW() override;
		void init() override;

		void onThreadShutdown(rawrbox::ENGINE_THREADS thread) override;
		void pollEvents() override;
		void update() override;
		void fixedUpdate() override;
		void draw() override;

		void loadContent();

	public:
		Engine() = default;
		Engine(const Engine&) = delete;
		Engine(Engine&&) = delete;
		Engine& operator=(const Engine&) = delete;
		Engine& operator=(Engine&&) = delete;
		~Engine() override = default;
	};
} // namespace tombmaker
```

3. Create a `engine.cpp`

```cpp

#include <rawrbox/assimp/resources/model.hpp>
#include <rawrbox/engine/static.hpp>
#include <rawrbox/render/resources/font.hpp>
#include <rawrbox/render/resources/texture.hpp>
#include <rawrbox/resources/manager.hpp>
#include <rawrbox/utils/threading.hpp>

#include <bx/bx.h>
#include <bx/math.h>
#include <fmt/format.h>

namespace my_game {
	void Engine::setupGLFW() {
		this->_window = std::make_unique<rawrbox::Window>();
		this->_window->setMonitor(-1);
		this->_window->setTitle("My Game");

        // Select what renderer we want to use, either empty or rawrbox::RendererCluster.
        // Default does not support lighthing, it's mainly used for non-lighthing / 2d stencil games
		this->_window->setRenderer<rawrbox::RendererCluster>(
		    bgfx::RendererType::Count, [this]() { // bgfx::RendererType::Count = Auto-detect the best graphic api for the current system (dx12, dx11, vulkan, etc)
				// draw 2d stencil stuff
            }, [this]() {
                // draw 3d
            });

#ifndef _DEBUG
		this->_window->create(-1, -1, rawrbox::WindowFlags::Window::FULLSCREEN | rawrbox::WindowFlags::Features::MULTI_THREADED);
#else
		this->_window->create(1600, 900, rawrbox::WindowFlags::Debug::TEXT | rawrbox::WindowFlags::Debug::PROFILER | rawrbox::WindowFlags::Window::WINDOWED | rawrbox::WindowFlags::Features::MULTI_THREADED);
#endif

		this->_window->onWindowClose += [this](auto& /*w*/) { this->shutdown(); };
		this->_window->onIntroCompleted += [this]() {
			this->loadContent();
		};
	}

	void Engine::loadContent() {
		std::vector content = {
		    std::make_pair<std::string, uint32_t>("./content/fonts/trcn.ttf", 0)}; // Insert the list of files you want to load, make sure the plugins are added for those file extensions, check line 158

		this->_loadingFiles = static_cast<int>(content.size());
		for (auto& f : content) {
			rawrbox::RESOURCES::loadFileAsync(f.first, f.second, [this]() {
				this->_loadingFiles--;
				if (this->_loadingFiles <= 0) {
					rawrbox::runOnRenderThread([this]() {
                        // Done loading files, continue game or something
					});
				}
			});
		}
	}

	void Engine::init() {
		if (this->_window == nullptr) return;

		// Setup resources
		rawrbox::RESOURCES::addLoader<rawrbox::FontLoader>(); // Add loaders for the files we want to import
		rawrbox::RESOURCES::addLoader<rawrbox::AssimpLoader>();
		rawrbox::RESOURCES::addLoader<rawrbox::TextureLoader>();
		// --------------

		this->_window->initializeBGFX(0x000000FF); // Black background
	}

	void Engine::onThreadShutdown(rawrbox::ENGINE_THREADS thread) {
		if (thread == rawrbox::ENGINE_THREADS::THREAD_INPUT) return; // Engine uses 2 threads, input (glfw) and render (bgfx)

		rawrbox::RESOURCES::shutdown();
		rawrbox::ASYNC::shutdown();

		this->_window->unblockPoll();
		this->_window.reset();
	}

	void Engine::pollEvents() {
		if (this->_window == nullptr) return;
		this->_window->pollEvents(); // Poll glfw events
	}

	void Engine::update() {
		if (this->_window == nullptr) return;
		this->_window->update(); // non-tick update
	}

	void Engine::fixedUpdate() {
		if (this->_window == nullptr) return;
        // tick based update
	}

	void Engine::draw() {
		if (this->_window == nullptr) return;

#ifdef _DEBUG
		const bgfx::Stats* stats = bgfx::getStats();

		bgfx::dbgTextClear();
		bgfx::dbgTextPrintf(1, 4, 0x6f, "GPU %0.6f [ms]", double(stats->gpuTimeEnd - stats->gpuTimeBegin) * 1000.0 / stats->gpuTimerFreq);
		bgfx::dbgTextPrintf(1, 5, 0x6f, "CPU %0.6f [ms]", double(stats->cpuTimeEnd - stats->cpuTimeBegin) * 1000.0 / stats->cpuTimerFreq);
#endif

		this->_window->render(); // Draw world, overlay & commit primitives, this will call the methods on the window->setRenderer
	}
}
```

# Done!

## Check [SAMPLES](../samples.md) for examples!
