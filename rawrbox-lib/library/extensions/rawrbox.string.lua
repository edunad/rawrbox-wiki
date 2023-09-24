---@meta

---
---@param str string
---@param sep string
---@param max number
---@return string[]
---* Splits the string with the given seperator
---
string.split = function(str, sep, max) end

---
---@param str string
---@return boolean
---* Returns true if the string is empty
---
string.isEmpty = function(str) end

---
---@param bytes number
---@return string
---* Converts bytes to a readable string (aka 1GB.. 1TB.. etc)
---
string.bytesToReadable = function(bytes) end

---
---@param str string
---@return string
---* Removes string white spaces
---
string.trim = function(str) end

---
---@param str string
---@param ... any
---@return string
---* Formats the given string with the given params
---* Ex: string.format("hello {}, age {}", "world", 20) = "hello world, age 20"
---
string.format = function(str, ...) end


---
---@param str string
---@param ... any
---@return string
---@deprecated "Use string.format with {} instead of %d..etc"
---* Old lua string.format
---
string.luaFormat = function(str, ...) end
