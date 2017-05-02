local menu = {}
menu.deltaTime = 0
menu.world = 1
menu.init = 0
--See next comment
--local navkeys = {"up", "down"}

function menu.update()
	if menu.init == 0 then
		background = love.graphics.newImage('background.png')
		menu.init = 1
		
		--Make an actual menu
	end

	--Really don't need anything here.
	
	--[[  Tried to avoid repeating if statements, realized I couldn't.  PS: Even worse, just realized keypressed was a callback function.
	for i=0,2,1 do
		if love.keypressed(navkeys[i]) then
			if navkeys[i] = "up" then
				
			else
			if navkeys[i] = "down" then
				
			end
		end
	end
	]]
	
end

--Work on getting more callback functions (ie. keypressed) onto the functionset. Or just don't use them. Just an idea.

function menu.draw()
 
	love.graphics.draw(background, 0, 0, 0, 1, 1, 0, 0)
end

return menu