local wezterm = require("wezterm")
local keys = require("keybinds")
require("events")

local config = {}

config.enable_wayland = false

config.keys = keys

if wezterm.target_triple == 'aarch64-apple-darwin' then
    -- We are running on macOS; maybe we emit different
    -- key assignments here?
    config.initial_cols = 100
    config.initial_rows = 30
end


config.warn_about_missing_glyphs = false
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = false
config.window_padding = {
    top = 0,
    right = 0,
    bottom = 0,
    left = 0,
}
config.max_fps = 144
config.prefer_egl = true
config.font = wezterm.font("FiraCode Nerd Font Mono")
config.font_size = 14
config.line_height = 1
config.color_scheme = "Github Dark"
config.colors = {
    cursor_bg = "white",
    cursor_border = "white",
}

return config
