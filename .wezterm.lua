local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- Set the font and font size
config.font = wezterm.font("JetbrainsMono Nerd Font")
config.font_size = 19

-- Window appearance and behavior settings
config.window_decorations = "RESIZE"
config.window_close_confirmation = "NeverPrompt"
config.scrollback_lines = 3000
config.color_scheme = "Catppuccin Mocha"
config.window_padding = {
	left = 10,
	right = 10,
	top = 0,
	bottom = 0,
}

-- Tab bar settings
config.use_fancy_tab_bar = false
config.enable_tab_bar = false

-- Status update interval in milliseconds
config.status_update_interval = 1000

-- Key composition settings for Alt keys
config.send_composed_key_when_left_alt_is_pressed = true
config.send_composed_key_when_right_alt_is_pressed = false

return config
