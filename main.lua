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
	level = "home"
	playerSprite = "nude"
	setupMenu()
	currMap = setupMap("assets/maps/"..level..".lua")
	setupInventory()
	setupSound()
	font10 = love.graphics.newFont("assets/ui/manrope.ttf", 10)
	font14 = love.graphics.setNewFont("assets/ui/manrope.ttf", 14)
	font20 = love.graphics.newFont("assets/ui/manrope.ttf",20)
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
		if love.keyboard.isDown("1") then
			level = "home"
			currMap = setupMap("assets/maps/"..level..".lua")
		elseif love.keyboard.isDown("2") then
			level = "tutorial"
			currMap = setupMap("assets/maps/"..level..".lua")
		elseif love.keyboard.isDown("3") then
			level = "level1"
			currMap = setupMap("assets/maps/"..level..".lua")
		elseif love.keyboard.isDown("4") then
			level = "level2"
			currMap = setupMap("assets/maps/"..level..".lua")
		elseif love.keyboard.isDown("5") then
			level = "level3"
			currMap = setupMap("assets/maps/"..level..".lua")
		elseif love.keyboard.isDown("6") then
			level = "level4"
			currMap = setupMap("assets/maps/"..level..".lua")
		elseif love.keyboard.isDown("7") then
			level = "level5"
			currMap = setupMap("assets/maps/"..level..".lua")
		elseif love.keyboard.isDown("8") then
			level = "level6"
			currMap = setupMap("assets/maps/"..level..".lua")
		end

		if not (previousPhase == "map") then
			gui:clear()
		end

		local player = getItem(map.layers["spritesRender"].sprites, "player")
		tx = math.floor(player.x - screenWidth  / 2)
		ty = math.floor(player.y - screenHeight / 2)
		map:draw(-tx, -ty, scale, scale)

		gui:draw()
		love.graphics.setColor(0.1,0,0,0.5)
		love.graphics.rectangle("fill", 5, 75, 175, 70)
		love.graphics.setColor(1,1,1,1)
		love.graphics.setFont(font24)
		love.graphics.printf("Hunger: ".. math.min(math.floor(hunger), 10) .."/10", 25, 80, 600, 'left')
		love.graphics.printf("BMI: "..math.min(bmi, 26.5).."/26.5", 25, 105, 600, 'left')
	end
	if gamePhase == "dialogue" then
		dialogueDraw()
	end
	if gamePhase == "gameover" then
		if bmi >= 26.5 then
			love.audio.play(love.audio.newSource("assets/sounds/heartattack.wav", "stream"))
			prettyScroller("Game Over\n\nYou had a heart attack.", 1.5, "quit")
		elseif hunger >= 10 then
			prettyScroller("Game Over\n\nYou starved to death.", 1.5, "quit")
		else
			prettyScroller("Game Over\n\nThe fridge is empty. You die of starvation.\n\nCongratulations!", 1.5, "quit")
		end
	end
	soundManager()
end

love.mousepressed = function(x, y, button)
	gui:mousepress(x, y, button)
end
love.mousereleased = function(x, y, button)
	gui:mouserelease(x, y, button)
end
love.wheelmoved = function(x, y)
	gui:mousewheel(x, y)
end
