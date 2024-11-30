local wezterm = require 'wezterm'
local config = {}
local mux = wezterm.mux

wezterm.on('gui-startup', function(cmd)
  local tab, pane, window = mux.spawn_window(cmd or {})
  window:gui_window():maximize()
end)

config.font = wezterm.font 'UDEV Gothic NFLG'

-- config.enable_scroll_bar = false
config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}
config.window_background_opacity = 0.7
config.win32_system_backdrop = 'Acrylic'
config.color_scheme = 'Tokyo Night Storm'

config.keys = {
  {
		key = '\\',
		mods = 'CMD',
		action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
	},
	{
		key = 'w',
    mods = 'CMD',
		action = wezterm.action.CloseCurrentPane { confirm = true },
	},
	{
		key = 'w',
    mods = 'CMD|SHIFT',
		action = wezterm.action.CloseCurrentTab { confirm = true },
	},
	{
		key = 't',
		mods = 'CMD',
		action = wezterm.action.SpawnTab 'CurrentPaneDomain',
	},
  { 
    key = 'LeftArrow',
    mods = 'CMD|SHIFT',
    action = wezterm.action.ActivateTabRelative(-1),
  },
  { 
    key = 'RightArrow',
    mods = 'CMD|SHIFT', 
    action = wezterm.action.ActivateTabRelative(1),
  },
  {
    key = 'LeftArrow',
    mods = 'CMD',
    action = wezterm.action.ActivatePaneDirection 'Left',
  },
  {
    key = 'RightArrow',
    mods = 'CMD',
    action = wezterm.action.ActivatePaneDirection 'Right',
  },
}

return config
