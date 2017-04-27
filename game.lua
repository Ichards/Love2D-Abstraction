local game = {}
game.deltaTime = 0
game.world = 0

 
function game.load()
	platform = {}
	player = {}
	platform.width = love.graphics.getWidth()
	platform.height = love.graphics.getHeight()
 
	platform.x = 0
	platform.y = platform.height / 2
 
	player.x = love.graphics.getWidth() / 2
	player.y = love.graphics.getHeight() / 2
 
	player.speed = 200
 
	player.img = love.graphics.newImage('purple.png')
 
	player.ground = player.y
 
	player.y_velocity = 0
 
	player.jump_height = -300
	player.gravity = -500
end

 
function game.update()
	
	if love.keyboard.isDown('q') then
		game.world = 1
	end
	
	
	
	
	
	if love.keyboard.isDown('d') then
		if player.x < (love.graphics.getWidth() - player.img:getWidth()) then
			player.x = player.x + (player.speed * game.deltaTime)
		end
	elseif love.keyboard.isDown('a') then
		if player.x > 0 then 
			player.x = player.x - (player.speed * game.deltaTime)
		end
	end
 
	if love.keyboard.isDown('space') then
		if player.y_velocity == 0 then
			player.y_velocity = player.jump_height
		end
	end
 
	if player.y_velocity ~= 0 then
		player.y = player.y + player.y_velocity * game.deltaTime
		player.y_velocity = player.y_velocity - player.gravity * game.deltaTime
	end
 
	if player.y > player.ground then
		player.y_velocity = 0
    	player.y = player.ground
	end
end

 
function game.draw()
	love.graphics.setColor(255, 255, 255)
	love.graphics.rectangle('fill', platform.x, platform.y, platform.width, platform.height)
 
	love.graphics.draw(player.img, player.x, player.y, 0, 1, 1, 0, 32)
end


return game