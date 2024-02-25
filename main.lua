Object = require("src.lib.classic")

require("src.main")

love.window.setTitle("JPXS Launcher")
love.window.setMode(800, 600, { resizable = false })

Assets = {
	["icon"] = love.image.newImageData("assets/icon.png"),
	["logo"] = love.image.newImageData("assets/logo.png"),
}

love.window.setIcon(Assets["icon"])

function love.load()
	love.graphics.setBackgroundColor(0, 0, 0)
end
