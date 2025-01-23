local wezterm = require("wezterm")

local keys = {
    { key = "[", mods = "CTRL|SHIFT", action = wezterm.action.EmitEvent("dec-opacity"), },
    { key = "]", mods = "CTRL|SHIFT", action = wezterm.action.EmitEvent("inc-opacity"), },
}

return keys
