---@meta

---
---@class Color
---@field r number
---@field g number
---@field b number
---@field a number
---* Color's entry class
Color = {
	r = 0,
	g = 0,
	b = 0,
	a = 1
}

---
---@param r number
---@param g number
---@param b number
---@param a? number
---@return Color
---* Color constructor
---
function Color:new(r, g, b, a) end

---
---@return number
---* Returns the packed color
---
function Color:pack() end

---
---@return number
---* Returns the dot color
---
function Color:dot() end

---
---@return number
---* Returns the max of the color
---
function Color:max() end

---
---@return table
---* Returns the color as a array
---
function Color:data() end

---
---@param other Color
---@return Color
---* Returns the lerp between 2 colors
---
function Color:lerp(other) end

---
---@param index number
---@return Color
---* Returns a debug color
---
function Color:debug(index) end

---
---@return boolean
---* Returns true if the color has transparency
---
function Color:hasTransparency() end

---
---@return boolean
---* Returns true if the color is transparent
---
function Color:isTransparent() end


