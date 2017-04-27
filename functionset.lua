
--Make this run in love.load, if possible.
--That is NOT possible.

local game = require("game")
local menu = require("menu")
local currentworld = game


local functions = {}
functions.deltaTime = 0
functions.world = currentworld.world



currentworld.deltaTime = functions.deltaTime




function functions.update()
	
	if currentworld.world == 1 then
	currentworld = menu
	end
	
	currentworld.deltaTime = functions.deltaTime
	currentworld.update()
end



function functions.draw()
	currentworld.draw()
end


return functions