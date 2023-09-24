---@meta

---
---@class Vector3
---@field x number
---@field y number
---@operator add(Vector3): Vector3
---@operator add(number): Vector3
---@operator sub(Vector3): Vector3
---@operator sub(number): Vector3
---@operator mul(Vector3): Vector3
---@operator mul(number): Vector3
---@operator div(Vector3): Vector3
---@operator div(number): Vector3
---* Vector3's entry class
---
Vector3 = {
	x = 0,
	y = 0,
	z = 0
}

---
---@param x number
---@param y number
---@param z number
---@return Vector3
---* Vector3 constructor
---
function Vector3:new(x, y, z) end

---
---@return Vector3
---* Flips x & y & z
---
function Vector3:yxz() end

---
---@return Vector3
---* Flips x & y & z
---
function Vector3:yzx() end

---
---@return Vector3
---* Flips x & y & z
---
function Vector3:xzy() end

---
---@return Vector3
---* Flips x & y & z
---
function Vector3:zxy() end

---
---@return Vector3
---* Flips x & y & z
---
function Vector3:zyx() end

---
---@return Vector2
---* Flips x & y
---
function Vector3:xy() end

---
---@return Vector2
---* Flips x & y
---
function Vector3:yx() end

---
---@return Vector3
---* Returns a Vector3 with zeros
---
function Vector3:zero() end

---
---@return Vector3
---* Returns a Vector3 with ones
---
function Vector3:one() end

---
---@return number
---* Returns a Vector3 size
---
function Vector3:size() end

---
---@return table
---* Returns Vector3 as a array
---
function Vector3:data() end

---
---@param min Vector3 | number
---@param max Vector3 | number
---@return Vector3
---* Returns the clamped Vector3
---
function Vector3:clamp(min, max) end

---
---@param other Vector3
---@return number
---* Returns the distance of the Vector3 from the given Vector3
---
function Vector3:distance(other) end

---
---@return number
---* Returns the length of the Vector3
---
function Vector3:length() end

---
---@param other Vector3
---@return number
---* Returns the angle of the Vector3 from the given Vector3
---
function Vector3:angle(other) end

---
---@return Vector3
---* Returns a positive Vector3
---
function Vector3:abs() end

---
---@param other Vector3
---@param t number
---@return Vector3
---* Returns the lerped Vector3
---
function Vector3:lerp(other, t) end

---
---@return number
---* Returns the Vector3 atan2
---
function Vector3:atan2() end

---
---@param ang number
---@return Vector3
---* Returns a Vector3
---
function Vector3:sinCos(ang) end

---
---@param ang number
---@return Vector3
---* Returns a Vector3
---
function Vector3:cosSin(ang) end

---
---@param a1 Vector3
---@param a2 Vector3
---@param a3 Vector3
---@param a4 Vector3
---@return Vector3
---* Returns the intersection
---
function Vector3:intersects(a1, a2, a3, a4) end

---
---@param ang number
---@param origin Vector3
---@return Vector3
---* Returns the rotated Vector3
---
function Vector3:rotateAroundOrigin(ang, origin) end

---
---@param other Vector3
---@return number
---* Returns the dot Vector3
---
function Vector3:dot(other) end

---
---@return Vector3
---* Returns the normalized Vector3
---
function Vector3:normalized() end

---
---@param other Vector3
---@return number
---* Returns the cross Vector3
---
function Vector3:cross(other) end

---
---@return Vector3
---* Returns the floored Vector3
---
function Vector3:floor() end

---
---@return Vector3
---* Returns the rounded Vector3
---
function Vector3:round() end

---
---@return Vector3
---* Returns the ceiled Vector3
---
function Vector3:ceil() end


