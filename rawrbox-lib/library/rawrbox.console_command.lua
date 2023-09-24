---@meta

---
---@class ConsoleCommand
---* ConsoleCommand's entry class.
---
ConsoleCommand = {}

---
---@return boolean
---* Returns true if is a admin command
---
function ConsoleCommand:admin()
end

---
---@return boolean
---* Returns true if is a cheat command
---
function ConsoleCommand:cheat()
end

---
---@return boolean
---* Returns true if is a developer command
---
function ConsoleCommand:developer()
end

---
---@return boolean
---* Returns true if is a variable command
---
function ConsoleCommand:variable()
end
