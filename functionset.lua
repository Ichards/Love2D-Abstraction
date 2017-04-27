
--Make this run in love.load, if possible.

local game = require("game")
local menu = require("menu")
local currentworld = game
if currentworld.world = 1 then
	currentworld = menu
end

local functions = {}
functions.deltaTime = 0
functions.world = currentworld.world



currentworld.deltaTime = functions.deltaTime

function functions.load()
	currentworld.load()
end


function functions.update()
	currentworld.deltaTime = functions.deltaTime
	currentworld.update()
end



function functions.draw()
	game.draw()
end


return functions