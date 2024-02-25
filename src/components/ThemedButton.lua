---@class ThemedButton : Button
local ThemedButton = Button:extend()

--- Create a new themed button
---@param x number
---@param y number
---@param width number
---@param height number
---@param text string
function ThemedButton:new(x, y, width, height, text)
	---@diagnostic disable-next-line: redundant-parameter
	ThemedButton.super:new(x, y, width, height, text)
	self.fillColor = Color(0.5, 0.5, 0.5)
	self.textColor = Color(1, 1, 1)

	ComponentManager:addComponent(self)
end

---@param state boolean
function ThemedButton:onHoverStateChange(state)
	if state then
		self.fillColor = Color(0.7, 0.7, 0.7)
	else
		self.fillColor = Color(0.5, 0.5, 0.5)
	end
end

---@param state boolean
function ThemedButton:onClickStateChange(state)
	if state then
		self.fillColor = Color(0.3, 0.3, 0.3)
	else
		self.fillColor = Color(0.5, 0.5, 0.5)
	end
end

--- Draw the themed button
function ThemedButton:draw()
	love.graphics.setColor(self.fillColor:toTable())
	love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
	love.graphics.setColor(self.textColor:toTable())
	love.graphics.print(self.text, self.x, self.y)
end

return ThemedButton
