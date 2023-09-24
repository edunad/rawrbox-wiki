---@meta

---
---@class AABB
---@field pos Vector2
---@field size Vector2
---* AABB's entry class
AABB = {
	pos = {
		x = 0,
		y = 0
	},
	size = {
		x = 0,
		y = 0
	}
}

---
---@param x number
---@param y number
---@param width number
---@param height number
---@return AABB
---* AABB constructor
---
function AABB:new(x, y, width, height) end

---
---@return number
---* Returns the top
---
function AABB:top() end

---
---@return number
---* Returns the left
---
function AABB:left() end

---
---@return number
---* Returns the bottom
---
function AABB:bottom() end

---
---@return number
---* Returns the right
---
function AABB:right() end

---
---@return boolean
---* Returns if empty
---
function AABB:empty() end

---
---@param pos Vector2
---@return boolean
---* Returns if true if it contains the given point
---
function AABB:contains(pos) end

---
---@return number
---* Returns the surfaceArea
---
function AABB:surfaceArea() end
