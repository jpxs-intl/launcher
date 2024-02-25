-- load common classes

---@class Component : Object
---@field x number
---@field y number
---@field width number
---@field height number
Component = Object:extend()

--- Create a new component
---@param x number
---@param y number
---@param width number
---@param height number
function Component:new(x, y, width, height)
	self.x = x
	self.y = y
	self.width = width
	self.height = height
end

--- Draw the component
function Component:draw()
	love.graphics.setColor(1, 1, 1)
	love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
end

--- update the component
function Component:update(dt) end
