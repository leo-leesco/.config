local wezterm = require("wezterm")
-- Creates a config object which we will be adding our config to
local config = wezterm.config_builder()

-- Import our new module (put this near the top of your wezterm.lua)
local colorscheme = require("appearance")

config.color_scheme_dirs = { os.getenv("HOME") .. "/.config/wezterm/colors" }
wezterm.log_info(config.color_scheme_dirs)
if colorscheme.is_light() then
	config.color_scheme = "dayfox"
else
	config.color_scheme = "nightfox"
end
wezterm.log_info(config.color_scheme)

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

return config
