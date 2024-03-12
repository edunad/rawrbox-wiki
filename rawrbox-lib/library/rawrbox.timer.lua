---@meta

---
---@class timer
---* timer's entry class.
---
timer = {}

---
---@param id string
---@param interval number
---@param ticks number
---@param callback function "fun(data?: any): void"
---@return boolean
---* Creates a timer using the unique id, triggering every x seconds for an x ammount of times.
---* If ticks is set to less or equal than 0, it will run infinitely
---
function timer:create(id, interval, ticks, callback)
end

---
---@param id string
---@param interval number
---@param callback function "fun(data?: any): void"
---@return boolean
---* Creates a timer that will tick once
---
function timer:simple(id, interval, callback)
end

---
---@param id string
---@return boolean
---* Destroys a timer with the given id
---
function timer:destroy(id)
end

---
---@param id string
---@return boolean
---* Returns true if a timer with the given id exists
---
function timer:exists(id)
end

---
---@param id string
---@param pause boolean
---@return boolean
---* Pauses / resumes a timer with the given id
---
function timer:pause(id, pause)
end
