---@meta

---
---@class language
---* language's entry class.
---
language = {}

---
---@return string
---* Returns the current game language
---
function language:getLanguage() end

---
---@param lang string
---* Sets the game language (en, pt, etc)
---
function language:setLanguage(lang) end

---
---@param modID string
---@param key string
---@param ...? any
---@return string
---* Returns the i18n string (values are optional)
---
function language:get(modID, key, ...) end
