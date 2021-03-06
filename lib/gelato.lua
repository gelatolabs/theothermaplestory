local gui = require "lib.Gspot"

-- return table item by name (for STI)
function getItem(table, name)
	for _, item in pairs(table) do
		if item.name == name then
			return item
		end
	end
end

-- print tables for debugging
-- stolen from https://stackoverflow.com/a/27028488 :)
function dump(o)
	if type(o) == 'table' then
		local s = '{ '
		for k,v in pairs(o) do
			if type(k) ~= 'number' then k = '"'..k..'"' end
			s = s .. '['..k..'] = ' .. dump(v) .. ','
		end
		return s .. '} '
	else
		return tostring(o)
	end
end

scrollInc = "notrunning"

function prettyScroller(newText, speed, prevState)
	if scrollInc == "notrunning" then
		gui:clear()
		love.graphics.setColor(1,1,1)
		love.graphics.setBackgroundColor(0,0,0)
		scrollInc = 600
		love.graphics.setFont(font24)
		scrollerText = love.graphics.newText(font24, "")
		scrollerText:setf(newText, 600, 'center')
	else
		if scrollInc > (-1 * scrollerText:getHeight()) then
			love.graphics.draw(scrollerText, 100, scrollInc, 0, 1, 1)

			if love.keyboard.isDown("space") then
				scrollInc = scrollInc - 5
			else
				scrollInc = scrollInc - 1
			end
			love.timer.sleep(0.01/speed)
		elseif prevState == "quit" then
			love.event.quit(0)
		else
			scrollInc = "notrunning"
			gamePhase = prevState
			if gamePhase == "menu" then
				menuDraw()
			end
		end	
	end
end
