-- Import the wezterm module
local wezterm = require("wezterm")
-- Creates a config object which we will be adding our config to
local config = wezterm.config_builder()

-- Import our new module (put this near the top of your wezterm.lua)
local appearance = require("appearance")

-- Use it!
if appearance.is_dark() then
	config.color_scheme = "catppuccin-mocha"
else
	config.color_scheme = "catppuccin-latte"
end

config.font = wezterm.font_with_fallback({
	{
		family = "Monaspace Neon",
		harfbuzz_features = { "calt", "liga", "ss01", "ss02", "ss03", "ss04", "ss05", "ss06", "ss08" },
	},
	"JetBrains Mono",
	"Iosevka Term Extended",
})
config.font_size = 14
config.use_dead_keys = false
-- Returns our config to be evaluated. We must always do this at the bottom of this file
return config
