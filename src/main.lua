--- load managers
require("src.classes.ComponentManager")

-- load classes
require("src.components.Component")
require("src.classes.Layout")
require("src.classes.Color")

-- load components
require("src.components.Button")

-- load layouts
require("src.layouts.index")

ComponentManager:setLayout("index")

function love.draw()
	ComponentManager:draw()
end

---@param dt number
function love.update(dt)
	ComponentManager:update(dt)
end
