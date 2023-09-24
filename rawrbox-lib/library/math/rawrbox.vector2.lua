---@meta

---
---@class Vector2
---@field x number
---@field y number
---@operator add(Vector2): Vector2
---@operator add(number): Vector2
---@operator sub(Vector2): Vector2
---@operator sub(number): Vector2
---@operator mul(Vector2): Vector2
---@operator mul(number): Vector2
---@operator div(Vector2): Vector2
---@operator div(number): Vector2
---* Vector2's entry class
---
Vector2 = {
	x = 0,
	y = 0
}

---
---@param x number
---@param y number
---@return Vector2
---* Vector2 constructor
---
function Vector2:new(x, y) end

---
---@return Vector2
---* Flips x & y
---
function Vector2:yx() end

---
---@return Vector2
---* Returns a vector2 with zeros
---
function Vector2:zero() end

---
---@return Vector2
---* Returns a vector2 with ones
---
function Vector2:one() end

---
---@return number
---* Returns a vector2 size
---
function Vector2:size() end

---
---@return table
---* Returns vector2 as a array
---
function Vector2:data() end

---
---@param min Vector2 | number
---@param max Vector2 | number
---@return Vector2
---* Returns the clamped Vector2
---
function Vector2:clamp(min, max) end

---
---@param other Vector2
---@return number
---* Returns the distance of the Vector2 from the given Vector2
---
function Vector2:distance(other) end

---
---@return number
---* Returns the length of the Vector2
---
function Vector2:length() end

---
---@param other Vector2
---@return number
---* Returns the angle of the Vector2 from the given Vector2
---
function Vector2:angle(other) end

---
---@return Vector2
---* Returns a positive Vector2
---
function Vector2:abs() end

---
---@param other Vector2
---@param t number
---@return Vector2
---* Returns the lerped Vector2
---
function Vector2:lerp(other, t) end

---
---@return number
---* Returns the Vector2 atan2
---
function Vector2:atan2() end

---
---@param ang number
---@return Vector2
---* Returns a Vector2
---
function Vector2:sinCos(ang) end

---
---@param ang number
---@return Vector2
---* Returns a Vector2
---
function Vector2:cosSin(ang) end

---
---@param a1 Vector2
---@param a2 Vector2
---@param a3 Vector2
---@param a4 Vector2
---@return Vector2
---* Returns the intersection
---
function Vector2:intersects(a1, a2, a3, a4) end

---
---@param ang number
---@param origin Vector2
---@return Vector2
---* Returns the rotated Vector2
---
function Vector2:rotateAroundOrigin(ang, origin) end

---
---@param other Vector2
---@return number
---* Returns the dot Vector2
---
function Vector2:dot(other) end

---
---@return Vector2
---* Returns the normalized Vector2
---
function Vector2:normalized() end

---
---@param other Vector2
---@return number
---* Returns the cross Vector2
---
function Vector2:cross(other) end

---
---@return Vector2
---* Returns the floored Vector2
---
function Vector2:floor() end

---
---@return Vector2
---* Returns the rounded Vector2
---
function Vector2:round() end

---
---@return Vector2
---* Returns the ceiled Vector2
---
function Vector2:ceil() end

---
---@param other Vector2
---@return Vector2
---* Returns the min between 2 vectors
---
function Vector2:min(other) end

---
---@param other Vector2
---@return Vector2
---* Returns the max between 2 vectors
---
function Vector2:max(other) end
