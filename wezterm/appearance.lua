local wezterm = require("wezterm")
-- Define a lua table to hold _our_ module's functions
local module = {}

-- Returns a bool based on whether the host operating system's appearance is light or dark.
function module.is_light()
	-- wezterm.gui is not always available, depending on what environment wezterm is operating in. Just return true if it's not defined.
	if wezterm.gui then
		local appearance = wezterm.gui.get_appearance() -- this can be Light or Dark
		wezterm.log_info(appearance)
		local f = io.open(os.getenv("HOME") .. "/.cache/wezterm_appearance", "w")
		if f then
			f:write(appearance)
			f:close()
		end
		return appearance:find("Light")
	end
	return true
end

return module
