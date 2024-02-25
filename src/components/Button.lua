---@class Button : Component
---@field fillColor Color
---@field textColor Color
---@field text string
---@field hovered boolean
---@field clicked boolean
Button = Component:extend()

--- Create a new button
---@param x number
---@param y number
---@param width number
---@param height number
---@param text string
function Button:new(x, y, width, height, text)
	---@diagnostic disable-next-line: redundant-parameter
	Button.super:new(x, y, width, height)
	self.text = text

	self.fillColor = Color(0.5, 0.5, 0.5)
	self.textColor = Color(1, 1, 1)

	ComponentManager:addComponent(self)
end

---@param state boolean
function Button:onHoverStateChange(state)
	if state then
		self.fillColor = Color(0.5, 0.5, 0.5)
	else
		self.fillColor = Color(0.5, 0.5, 0.5)
	end
end

---@param state boolean
function Button:onClickStateChange(state)
	if state then
		self.fillColor = Color(0.5, 0.5, 0.5)
	else
		self.fillColor = Color(0.5, 0.5, 0.5)
	end
end

--- Handle the button being clicked
--- comment
function Button:onClick()
	print("Button clicked!")
end

--- Draw the button
function Button:draw()
	love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
	love.graphics.setColor(self.textColor:toTable())
	love.graphics.print(self.text, self.x, self.y)
end

--- Update the button
---@param dt number
function Button:update(dt)
	local mx, my = love.mouse.getPosition()
	local lastHoverState = self.hovered
	self.hovered = mx >= self.x and mx <= self.x + self.width and my >= self.y and my <= self.y + self.height
	if lastHoverState ~= self.hovered then
		self:onHoverStateChange(self.hovered)
	end
	local lastClicked = self.clicked
	self.clicked = self.hovered and love.mouse.isDown(1)
	if lastClicked ~= self.clicked and self.clicked then
		self:onClick()
	end
end
