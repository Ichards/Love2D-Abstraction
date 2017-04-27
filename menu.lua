local menu = {}
menu.deltaTime = 0
menu.world = 1

function menu.load()
	background = love.graphics.newImage('background.png')
end

function menu.draw()
 
	love.graphics.draw(background, 0, 0, 0, 1, 1, 0, 0)
end

return menu