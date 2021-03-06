function love.conf(t)
	t.releases = {
		title = 'The Other Maple Story',
		package = 'theothermaplestory',
		loveVersion = '11.3',
		version = '1.0',
		author = 'Gelato Labs',
		email = 'hello@gelatolabs.xyz',
		description = 'The Other Maple Story',
		homepage = 'https://gelatolabs.itch.io/the-other-maple-story',
		identifier = 'xyz.gelatolabs.theothermaplestory',
		releaseDirectory = 'releases',
	}

	t.title = "The Other Maple Story"				-- The title of the window the game is in (string)
	t.author = "Gelato Labs"				-- The author of the game (string)
	t.identity = "Gelato-Labs-LD46"				-- The name of the save directory (string)
	t.console = false					-- Attach a console (boolean, Windows only)
	t.window.width = 800				-- The window width (number)
	t.window.height = 600				-- The window height (number)
	t.window.fullscreen = false			-- Enable fullscreen (boolean)
	--t.window.vsync = love._version_major > 0 and 0	-- Enable vertical sync (boolean/integer)
	t.window.fsaa = 4					-- The number of MSAA-samples (number)
	t.window.msaa = 4					-- The number of MSAA-samples (number) (for 0.10
	t.modules.joystick = false			-- Enable the joystick module (boolean)
	t.modules.audio = true			-- Enable the audio module (boolean)
	t.modules.keyboard = true			-- Enable the keyboard module (boolean)
	t.modules.event = true				-- Enable the event module (boolean)
	t.modules.image = true				-- Enable the image module (boolean)
	t.modules.graphics = true			-- Enable the graphics module (boolean)
	t.modules.timer = true				-- Enable the timer module (boolean)
	t.modules.mouse = true				-- Enable the mouse module (boolean)
	t.modules.sound = true			-- Enable the sound module (boolean)
	t.modules.physics = true		-- Enable the physics module (boolean)
end
