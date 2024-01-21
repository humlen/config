local wezterm = require 'wezterm'
local act = wezterm.action

local config =  {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- font
config.font = wezterm.font_with_fallback {
  'JetBrainsMono Nerd Font Mono'
}
config.font_size = 10

-- keys
config.leader = { key = "a", mods = "CTRL", timeout_milliseconds = 1000 }
config.keys = {
  -- Paste from clipboard
  { key = 'V',    mods = 'CTRL',    action = act.PasteFrom 'Clipboard' },
  { key = 'V',    mods = 'CTRL',    action = act.PasteFrom 'PrimarySelection' },
  { key = "s",    mods = 'LEADER',  action = act.SplitVertical { domain = "CurrentPaneDomain" } },
  { key = "v",    mods = 'LEADER',  action = act.SplitHorizontal { domain = "CurrentPaneDomain" } },
  { key = "h",    mods = "LEADER",  action = act.ActivatePaneDirection("Left") },
  { key = "j",    mods = "LEADER",  action = act.ActivatePaneDirection("Down") },
  { key = "k",    mods = "LEADER",  action = act.ActivatePaneDirection("Up") },
  { key = "l",    mods = "LEADER",  action = act.ActivatePaneDirection("Right") },
  { key = "q",    mods = "LEADER",  action = act.CloseCurrentPane { confirm = true } },
}

-- Set the Wezterm theme
config.color_scheme = "Catppuccin Mocha"

-- Set the Wezterm opacity
config.window_background_opacity = 0.9

-- Dim inactive panes
config.inactive_pane_hsb = {
  saturation = 0.24,
  brightness = 0.50
}


-- tab bar
config.hide_tab_bar_if_only_one_tab = true

-- Window 
config.window_decorations = "RESIZE"

-- Other
config.window_close_confirmation = "AlwaysPrompt"
config.scrollback_lines = 3000



return config
