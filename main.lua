local functionset = require("functionset")


function love.load()
	functionset.load()
end

function love.update(dt)
	functionset.deltaTime = dt
	functionset.update()
end

function love.draw()
	functionset.draw()
end