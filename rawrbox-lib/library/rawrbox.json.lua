---@meta

---
---@class json
---* json's entry class.
---* [json.lua](https://github.com/rxi/json.lua)
---
json = {}

---
---@param data table
---@return string
---* Encodes a table to a json string
---
function json:encode(data) end

---
---@param data string
---@return table
---* Decodes a json string to a lua table
---
function json:decode(data) end
