require("src.classes.Layout")

---@class ComponentManager
ComponentManager = {
	---@type table<string, Layout>
	layouts = {},
	---@type table<string, Component>
	components = {},
	---@type Layout
	currentLayout = nil,
}

--- Create a new layout
---@param name string
function ComponentManager:newLayout(name)
	self.layouts[name] = Layout(name)
	self.currentLayout = self.layouts[name]
	return self.layouts[name]
end

--- Set the current layout
---@param name string
function ComponentManager:setLayout(name)
	self.currentLayout = self.layouts[name]
end

--- Add a component to the current layout
---@param component Component
function ComponentManager:addComponent(component)
	self.currentLayout:addComponent(component)
	self.components[component] = component
end

--- ComponentManager update
---@param dt number
function ComponentManager:update(dt)
	self.currentLayout:update(dt)
end

--- ComponentManager draw
function ComponentManager:draw()
	self.currentLayout:draw()
end

--- Remove a component from the current layout
---@param component Component
function ComponentManager:removeComponent(component)
	self.currentLayout:removeComponent(component)
	self.components[component] = nil
end
