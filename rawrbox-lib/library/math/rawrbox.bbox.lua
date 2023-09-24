---@meta

---
---@class BBOX
---@field min Vector3
---@field max Vector3
---@field size Vector3
---* BBOX's entry class
BBOX = {
	min = {
		x = 0,
		y = 0,
		z = 0
	},
	max = {
		x = 0,
		y = 0,
		z = 0
	},
    size = {
		x = 0,
		y = 0,
		z = 0
	}
}

---
---@param min Vector3
---@param max Vector3
---@param size Vector3
---@return BBOX
---* BBOX constructor
---
function BBOX:new(min, max, size) end
