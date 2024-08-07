---
sidebar_label: console:registerVariable
title: console:registerVariable
description: console:registerVariable
hide_title: true
---
<!--
AUTOGENERATED - DON'T EDIT
Your edits in this file will be overwritten in the next build!
-->
# [console](/docs/rawrbox/lua_api/console/README.md):registerVariable

:::warning
Console commands should be registered on the MOD:onInit() function
:::
:::warning
The command id needs to be unique
:::


```lua
void console:registerVariable(command, var, description, flags)
```

Registers a new console command<br/>
```lua {} showLineNumbers
local myVar = false
console:registerVariable("my_command", myVar, "My command description", CONSOLE.FLAGS.CHEATS | CONSOLE.FLAGS.ADMIN) -- Admin only and requires cheats enabled
```


-----------------
## Parameters

| Type   | Name | Description | Optional |
| ------ | ---- | ----------- | -------: |
| string | command | No description |   |
| number | var | No description |   |
| string | var | No description |   |
| boolean | var | No description |   |
| string | description | Default: '' | ✔ |
| [CONSOLE.FLAGS](/docs/rawrbox/lua_api/enums/console.flags/README.md) | flags | Default: '' | ✔ |
