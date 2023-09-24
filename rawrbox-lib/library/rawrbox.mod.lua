---@meta

---
---@class Mod
---* Mod's entry class
---
Mod = {}

---
---@hint @warning "YOU MIGHT MESS UP THE MOD'S LUA ENVIROMENT IF NOT CAREFUL!!"
---@return table
---* Returns the mod's enviroment
---
function Mod:getENV() end

---
---@return string
---* Returns the mod's id
---
function Mod:getID() end

---
---@return string
---* Returns the mod's folder
---
function Mod:getFolder() end

---
---@return string
---* Returns the mod's entry file path
---
function Mod:getEntryFilePath() end
