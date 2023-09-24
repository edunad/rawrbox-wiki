---
sidebar_label: 🔨 Contributing
title: 🔨 Contributing
description: 🔨 Contributing
hide_title: true
---

# Contributing

:::warning
Make sure you check [CONTRIBUTING.md](https://github.com/edunad/rawrbox/blob/master/CONTRIBUTING.md) on github
:::

## WINDOWS Setup

#### REQUIRED SOFTWARE

-   [GIT](https://git-scm.com/) or something similar to GIT
-   [CMAKE](https://cmake.org/download/) at least > 3.16.3
-   Download and install **C++ Build Tools** (2022 is recommended)<br/>
    -   ![](https://i.rawr.dev/KcTNzFJZhZ.png)
-   Download and install a IDE, [Visual Code](https://code.visualstudio.com/) is **recommended**.
-   Download and setup [ninja](https://github.com/ninja-build/ninja/releases) (make sure it's in the enviroment path)<br/>
    -   `pip install ninja` if you have python3 installed

#### IDE SETUP (Visual Code)

-   Open the workspace file (`.code-workspace`) and install the recommended extensions (at least **C++** & **CMAKE**)
-   Run **cmake configure**
-   Select `[Visual Studio Build Tools <version> Release - amd64]` on the kit popup (for all of the projects)
-   Run the compiler by hitting F5

## LINUX Setup

#### REQUIRED SOFTWARE

-   [PODMAN](https://podman.io/)

#### IDE SETUP

-   TODO

---

# CMAKE Setup

Ensure `RAWRBOX_DEV_MODE` is enabled. This will build all the libraries while compiling the engine
