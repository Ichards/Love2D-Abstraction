local menu = {}
menu.deltaTime = 0
menu.world = 1
menu.init = 0


function menu.update()
	if menu.init == 0 then
		background = love.graphics.newImage('background.png')
		menu.init = 1
	end
end

function menu.draw()
 
	love.graphics.draw(background, 0, 0, 0, 1, 1, 0, 0)
end

return menu
