---
sidebar_label: 1. CMAKE Setup
title: CMAKE Setup
description: CMAKE Setup
hide_title: true
---

# CMAKE Setup

:::info
Check [cmake](../rawrbox/cmake.md) for available rawrbox **cmake** options
:::

### using CPM

```cmake
CPMAddPackage(
    NAME
        rawrbox
    GITHUB_REPOSITORY
        edunad/rawrbox
    GIT_TAG
        master
    OPTIONS
        "RAWRBOX_BUILD_SAMPLES OFF"
        "RAWRBOX_BUILD_TESTING OFF"

        "RAWRBOX_BUILD_RAWRBOX_RESOURCES ON"
        "RAWRBOX_BUILD_RAWRBOX_ASSIMP ON"
        "RAWRBOX_BUILD_RAWRBOX_UI ON" # use UI, assimp and resources
    )
```

### fetchContent

```cmake
include(FetchContent)

FetchContent_GetProperties(rawrbox)
if(NOT rawrbox_POPULATED)
    set(RAWRBOX_BUILD_SAMPLES OFF)
    set(RAWRBOX_BUILD_TESTING OFF)

    # use UI, assimp and resources
    set(RAWRBOX_BUILD_RAWRBOX_RESOURCES ON)
    set(RAWRBOX_BUILD_RAWRBOX_ASSIMP ON)
    set(RAWRBOX_BUILD_RAWRBOX_UI ON)

	FetchContent_Declare(rawrbox
		GIT_REPOSITORY https://github.com/edunad/rawrbox.git
		GIT_TAG master
	)

	FetchContent_MakeAvailable(rawrbox)
endif()
```

---

## EXAMPLE SETUP

```cmake
cmake_minimum_required(VERSION 3.16.3 FATAL_ERROR)

# SETUP CPM -----
include("cmake/cpm.cmake")
# ---------------


# Versioning
project("Example" DESCRIPTION "My game" LANGUAGES C CXX)
# ---

# Fix cmake paths
list(PREPEND CMAKE_MODULE_PATH ${CMAKE_BINARY_DIR})
list(PREPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")
list(PREPEND CMAKE_PREFIX_PATH ${CMAKE_BINARY_DIR})
list(PREPEND CONAN_GENERATORS_FOLDER ${CMAKE_BINARY_DIR})
# ---

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DSPDLOG_FMT_EXTERNAL -DNOMINMAX")
set(CMAKE_CXX_STANDARD 23) # 23 recommended, but support 20 and lower
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

set(BUILD_SHARED_LIBS OFF)

# Apple needs this flag to compile mixed objective/c++
if(APPLE AND NOT XCODE)
    set(CMAKE_CXX_FLAGS "-ObjC++")
endif()

# Linux and Wayland support
if(NOT WIN32)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wno-psabi")
else()
    # Ignore warnings about missing pdb
    set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} /ignore:4099")
    set(CMAKE_SHARED_LINKER_FLAGS "${CMAKE_SHARED_LINKER_FLAGS} /ignore:4099")
    set(CMAKE_STATIC_LINKER_FLAGS "${CMAKE_STATIC_LINKER_FLAGS} /ignore:4099")
    add_definitions(-D_CRT_SECURE_NO_WARNINGS)

    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /permissive-")
endif()

set(CMAKE_SKIP_RPATH TRUE)
set(CMAKE_SKIP_BUILD_RPATH TRUE)
# ---------------------------------

# SETUP LIBS ---
CPMAddPackage(
    NAME
        rawrbox
    GITHUB_REPOSITORY
        edunad/rawrbox
    GIT_TAG
        master
    OPTIONS
        "RAWRBOX_BUILD_SAMPLES OFF"
        "RAWRBOX_BUILD_TESTING OFF"

        "RAWRBOX_BUILD_RAWRBOX_RESOURCES ON"
        "RAWRBOX_BUILD_RAWRBOX_ASSIMP ON"
        "RAWRBOX_BUILD_RAWRBOX_UI ON"  # use UI, assimp and resources
)
# --------------

# Grab source files
file(GLOB_RECURSE MY_GAME_SOURCES "include/*.hpp" "src/*.cpp")

# Project setup
set(output_target game)
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_HOME_DIRECTORY}/${OUTPUT_BIN}/${CMAKE_BUILD_TYPE})

add_executable(${output_target} ${MY_GAME_SOURCES})
copy_resources(TARGET ${output_target})

target_include_directories(${output_target} PRIVATE "include")
target_compile_features(${output_target} PRIVATE cxx_std_${CMAKE_CXX_STANDARD})
target_link_libraries(${output_target} PRIVATE RAWRBOX.RENDER RAWRBOX.ASSIMP RAWRBOX.UI)
target_compile_definitions(${output_target} PRIVATE NOMINMAX)


## WARNING ------
# RAWRBOX.PHYSICS requires MULTITHREADED_RUNTIME (JoltPhysics uses it ¯\_(ツ)_/¯)
## --------------

if(BUILD_MSVC_MULTITHREADED_RUNTIME)
    message(STATUS "Setting ${target}'s MSVC_RUNTIME_LIBRARY as MultiThreaded")

    if(("${CMAKE_SYSTEM_NAME}" STREQUAL "Windows" OR "${CMAKE_SYSTEM_NAME}" STREQUAL "WindowsStore") AND NOT MINGW)
        set_target_properties(${output_target} PROPERTIES MSVC_RUNTIME_LIBRARY "MultiThreaded$<$<CONFIG:Debug>:Debug>")
    endif()
endif()

if(NOT WIN32)
    set_target_properties(${output_target} PROPERTIES LINK_FLAGS -Wl,-rpath,'\$ORIGIN')
else()
    add_compile_options("/EHsc")
endif()
# ------

```
