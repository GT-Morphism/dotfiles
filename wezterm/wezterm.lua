-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

config.send_composed_key_when_left_alt_is_pressed = true

config.color_scheme = "Gruvbox Dark (Gogh)"

-- reference: https://github.com/HaleTom/dotfiles/blob/a2049913a35676eb4c449ebaff09f65abe055f62/wezterm/.config/wezterm/wezterm.lua#L94
config.font = wezterm.font({ -- Normal text
	family = "Monaspace Xenon",
	-- reference: https://monaspace.githubnext.com/#code-ligatures
	harfbuzz_features = { "calt", "liga", "dlig", "ss01", "ss02", "ss03", "ss04", "ss05", "ss06", "ss07", "ss08" },
})

config.font_rules = {
	{ -- Italic
		intensity = "Normal",
		italic = true,
		font = wezterm.font({
			family = "Monaspace Krypton",
			style = "Italic",
		}),
	},

	{ -- Bold
		intensity = "Bold",
		italic = false,
		font = wezterm.font({
			family = "Monaspace Krypton",
			weight = "Bold",
		}),
	},
}
config.font_size = 18

config.enable_tab_bar = false

config.window_decorations = "RESIZE"

config.window_background_opacity = 0.85
config.macos_window_background_blur = 20

config.keys = {
	{
		key = "w",
		mods = "CTRL|SHIFT|ALT",
		action = wezterm.action.CloseCurrentPane({ confirm = false }),
	},
}

-- and finally, return the configuration to wezterm
return config
