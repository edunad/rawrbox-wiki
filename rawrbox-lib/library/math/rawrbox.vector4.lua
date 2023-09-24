---@meta

---
---@class Vector4
---@field x number
---@field y number
---@operator add(Vector4): Vector4
---@operator add(number): Vector4
---@operator sub(Vector4): Vector4
---@operator sub(number): Vector4
---@operator mul(Vector4): Vector4
---@operator mul(number): Vector4
---@operator div(Vector4): Vector4
---@operator div(number): Vector4
---* Vector4's entry class
---
Vector4 = {
	x = 0,
	y = 0,
	z = 0,
	w = 0
}

---
---@param x number
---@param y number
---@param z number
---@param w number
---@return Vector4
---* Vector4 constructor
---
function Vector4:new(x, y, z, w) end

---
---@return Vector3
---* Flips x & y & z
---
function Vector4:xyz() end

---
---@return Vector3
---* Flips x & y & z
---
function Vector4:yxz() end

---
---@return Vector3
---* Flips x & y & z
---
function Vector4:yzx() end

---
---@return Vector3
---* Flips x & y & z
---
function Vector4:xzy() end

---
---@return Vector3
---* Flips x & y & z
---
function Vector4:zxy() end

---
---@return Vector3
---* Flips x & y & z
---
function Vector4:zyx() end

---
---@return Vector2
---* Flips x & y
---
function Vector4:xy() end

---
---@return Vector2
---* Flips x & y
---
function Vector4:yx() end

---
---@return table
---* Returns Vector4 as a array
---
function Vector4:data() end

---
---@return number
---* Returns the length of the Vector4
---
function Vector4:length() end

---
---@return number
---* Returns the length of the Vector4
---
function Vector4:lengthSquared() end


---
---@return number
---* Returns a Vector4 size
---
function Vector4:size() end

---
---@param other Vector4
---@return number
---* Returns the distance of the Vector4 from the given Vector4
---
function Vector4:distance(other) end

---
---@return number
---* Returns the sqrMagnitude of the Vector4
---
function Vector4:sqrMagnitude() end

---
---@return Vector4
---* Returns the normalized Vector4
---
function Vector4:normalized() end

---
---@param min Vector4 | number
---@param max Vector4 | number
---@return Vector4
---* Returns the clamped Vector4
---
function Vector4:clamp(min, max) end

---
---@param other Vector4
---@param t number
---@return Vector4
---* Returns the lerped Vector4
---
function Vector4:lerp(other, t) end

---
---@return Vector3
---* Returns a euler vector3
---
function Vector4:toEuler() end

---
---@return Vector3
---* Returns a axis vector3
---
function Vector4:toAxis() end

---
---@return Vector4
---@param other Vector3
---* Returns a quat vector4
---
function Vector4:toQuat(other) end

---
---@return Vector4
---@param at Vector3
---@param up Vector3
---* Returns a Vector4 aiming at the given rotation
---
function Vector4:lookRotation(at, up) end

---
---@return Vector4
---* Returns a inverted Vector4
---
function Vector4:inverse() end

---
---@param other Vector4
---@param t number
---@return Vector4
---* Returns the interpolated Vector4
---
function Vector4:interpolate(other, t) end
