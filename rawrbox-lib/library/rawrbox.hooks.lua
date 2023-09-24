---@meta

---
---@class hooks
---* Hooks's entry class
---
hooks = {}

---
---@param hookId string
---@param hookName string
---@param callback function "fun(data:any): void"
---* Creates a hook (aka listener) for a specific hookId
---* Make sure your hook hookName is unique, it might get replaced by other hooks!
---
function hooks:add(hookId, hookName, callback) end

---
---@param hookId string
---@param hookName string
---* Remove a hook (aka listener) for a specific hookId
---
function hooks:remove(hookId, hookName) end

---
---@param hookId string
---@param data any
---* Emits data to the given hookId
---
function hooks:call(hookId, data) end
