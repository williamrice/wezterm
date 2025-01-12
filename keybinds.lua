local wezterm = require("wezterm")

local keys = {
    { key = "[", mods = "CTRL", action = wezterm.action.EmitEvent("dec-opacity"), },
    { key = "]", mods = "CTRL", action = wezterm.action.EmitEvent("inc-opacity"), },
}

return keys
