local wezterm = require 'wezterm'
local act = wezterm.action

local config =  {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.font = wezterm.font_with_fallback {
  'JetBrainsMono Nerd Font Mono'
}

config.keys = {
  -- Paste from clipboard
  { key = 'V', mods = 'CTRL', action = act.PasteFrom 'Clipboard' },

  -- Paste from the primary selection
  { key = 'V', mods = 'CTRL', action = act.PasteFrom 'PrimarySelection' }
}

-- Set the Wezterm theme
config.color_scheme = "Catppuccin Mocha"

-- Set the Wezterm opacity
config.window_background_opacity = 0.88

return config
