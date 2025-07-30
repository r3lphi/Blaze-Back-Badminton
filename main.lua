local Assets = require("assets")

function love.load()
	print("Testing!")
	Assets.load_all()
end

function love.draw()
	love.graphics.draw(Assets.Sprites.Player, 50, 50)
end
