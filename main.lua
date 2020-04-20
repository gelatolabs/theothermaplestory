local gui        = require "lib.Gspot"
local bump       = require "lib.bump"
local bump_debug = require "lib.bump_debug"
require "lib.gelato"
require "menuHandler"
require "mapHandler"
require "inventoryHandler"
require "dialogueHandler"
require "soundHandler"

function love.load()
	gamePhase = "splash"
	level = "test"
	setupMenu()
	currMap = setupMap("assets/maps/"..level..".lua")
	setupInventory()
	setupSound()
	font10 = love.graphics.newFont("assets/ui/manrope.ttf", 10)
	font14 = love.graphics.setNewFont("assets/ui/manrope.ttf", 14)
	font24 = love.graphics.newFont("assets/ui/manrope.ttf",24)
end

function love.update(dt)
	map:update(dt)
	gui:update(dt)
end

function love.draw()
	scale = 1
	screenWidth  = love.graphics.getWidth()  / scale
	screenHeight = love.graphics.getHeight() / scale
	
	previousPhase = gamePhase

	if gamePhase == "splash" then
		if logoInc < (250 - (logo:getHeight() / 4)) then
			love.graphics.draw(logo, 400 - (logo:getWidth() / 4), logoInc, 0, 0.5, 0.5)
		else
			love.timer.sleep(1)
			gamePhase = "menu"
		end
		if love.keyboard.isDown("space") then
			gamePhase = "menu"
		end
		logoInc = logoInc + 1
	end
	if (gamePhase == "menu") or (gamePhase == "storyline") or (gamePhase == "aboot") then
		menuDraw()
	end
	if gamePhase == "map" then
		if not (previousPhase == "map") then
			print("cleared")
			gui:clear()
		end
		local player = getItem(map.layers["spritesRender"].sprites, "player")
		local tx = math.floor(player.x - screenWidth  / 2)
		local ty = math.floor(player.y - screenHeight / 2)
		map:draw(-tx, -ty, scale, scale)
		gui:draw()
		love.graphics.setFont(font24)
		love.graphics.printf("Hunger: ".. (math.floor(hunger*10))*0.1 .."/10", 25, 25, 600, 'left') 
		love.graphics.printf("BMI: "..bmi.."/26.5", 25, 50, 600, 'left') 
		--local hungerText = gui:text("Hunger: "..hunger.."/10", {x = 0, y = 0, w = screenWidth, h = 25})
		--local bmiText = gui:text("BMI: "..bmi.."/26.5", {x = 0, y = 25, w = screenWidth, h = 25})
	end
	if gamePhase == "dialogue" then -- dialogue
		dialogueDraw()
	end
	soundManager()
	--map:bump_draw(world)
	--bump_debug.draw(world)
end

love.mousepressed = function(x, y, button)
	gui:mousepress(x, y, button) -- pretty sure you want to register mouse events
end
love.mousereleased = function(x, y, button)
	gui:mouserelease(x, y, button)
end
love.wheelmoved = function(x, y)
	gui:mousewheel(x, y)
end
