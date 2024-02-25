---@class Color : Object
Color = Object:extend()

--- Create a new color
---@param r number
---@param g number
---@param b number
---@param a number
function Color:new(r, g, b, a)
	self.r = r
	self.g = g
	self.b = b
	self.a = a or 1
end

--- Convert the color to a table
---@return table
function Color:toTable()
	return { self.r, self.g, self.b, self.a }
end

--- Convert the color to a string
---@return string
function Color:__tostring()
	return string.format("Color(%d, %d, %d, %d)", self.r, self.g, self.b, self.a)
end
