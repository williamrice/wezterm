local wezterm = require("wezterm")

wezterm.on("inc-opacity", function(window, pane)
    local config = window:effective_config()
    local opa_def = config.window_background_opacity + 0.12
    if opa_def > 1.0 then
        opa_def = 1.0
    end
    local overrides = window:get_config_overrides() or {}
    overrides.window_background_opacity = opa_def
    window:set_config_overrides(overrides)
end)

wezterm.on("dec-opacity", function(window, pane)
    local config = window:effective_config()
    local opa_def = config.window_background_opacity - 0.12
    if opa_def < 0.0 then
        opa_def = 0.0
    end
    local overrides = window:get_config_overrides() or {}
    overrides.window_background_opacity = opa_def
    window:set_config_overrides(overrides)
end)
