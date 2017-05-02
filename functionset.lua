
--Make this run in love.load, if possible.
--That is NOT possible.

local worlds = {}

worlds["game"] = require("game")
worlds["menu"] = require("menu")
local currentworld = worlds["game"]


local functions = {}
functions.deltaTime = 0
functions.world = currentworld.world



currentworld.deltaTime = functions.deltaTime



--currentworld = currentworld.worlds[currentworld.world]
function functions.update()
	
	if currentworld.worldchange == 1 then
	currentworld.worldchange = 0
	currentworld = worlds[worlds["game"].world]
	end
	
	currentworld.deltaTime = functions.deltaTime
	currentworld.update()
end



function functions.draw()
	currentworld.draw()
end


return functions