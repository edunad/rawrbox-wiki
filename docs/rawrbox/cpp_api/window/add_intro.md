---
sidebar_label: Intros
title: Intros
description: Intros
hide_title: true
---

# Intros

:::warning
Currently only `.webp` is supported for intros. You do not need `RAWRBOX.RESOURCES` as window will handle the file loading and presenting
:::

Allows the user to add a custom splash screen / intro

```cpp
window->addIntro("./content/my_intro.webp", <intro speed>, <cover>);
```

You can then use `onIntroCompleted` to detect when the intro is completed

```cpp
window->onIntroCompleted += [this]() {};
```

---

If no intro is being played or the screen is black, it means the `update` method is missing the `window->update()` call.

You can also skip intros by calling

```cpp
window->skipIntros(true);
```
