---@class Layout : Object
Layout = Object:extend()

--- Create a new layout
---@param name string
function Layout:new(name)
	self.name = name
	self.components = {}
end

--- Add a component to the layout
---@param component Component
function Layout:addComponent(component)
	table.insert(self.components, component)
end

--- Remove a component from the layout
---@param component Component
function Layout:removeComponent(component)
	for i, c in ipairs(self.components) do
		if c == component then
			table.remove(self.components, i)
			break
		end
	end
end

--- Draw the layout
function Layout:draw()
	for _, component in ipairs(self.components) do
		component:draw()
	end
end

--- Update the layout
---@param dt number
function Layout:update(dt)
	for _, component in ipairs(self.components) do
		component:update(dt)
	end
end
