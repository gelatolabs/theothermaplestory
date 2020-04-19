local gui = require "lib.Gspot"
require "dialogue"

function setupDialogue()
	bg = love.graphics.newImage("assets/bgs/"..level..".png")
	d = dialogue[level][math.random(#dialogue[level])]
	ds = 1
	score = 0
	nextDialogue(d["intro"], d["stages"][ds]["options"])
end

function nextDialogue(t, b)
	print(dump(dialogue))
	text = t
	buttons = b
end

function dialogueSelector(selection)
	ds = ds + 1
	if d["stages"][ds-1]["outcomes"][selection] == "positive" then
		score = score + 1
	end
	if ds <= #d["stages"] then
		nextDialogue(d["stages"][ds-1]["responses"][selection], d["stages"][ds]["options"])
	else
		if score >= d["minscore"] then
			nextDialogue(d["stages"][ds-1]["responses"][selection].."\n"..d["success"], {"Back"})
		else
			nextDialogue(d["stages"][ds-1]["responses"][selection].."\n"..d["fail"], {"Back"})
		end
	end
end
	
function dialogueDraw()
	--gui:clear()
	love.graphics.draw(bg, 0, 0)
	love.graphics.printf(text, 0, 25, screenWidth, "center")
	for i=1,#buttons do
		local button = gui:button(buttons[i], {x = (800 - 256) / 2, y = 300 + 50*i, w = 256, h = gui.style.unit * 2})
		button.click = function(this, x, y)
			if buttons[i] == "Back" then
				gamePhase = "map"
			else
				dialogueSelector(i)
			end
		end
	end
	gui:draw()
end