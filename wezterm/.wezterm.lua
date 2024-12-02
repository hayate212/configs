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

config.hide_tab_bar_if_only_one_tab = true
--config.window_decorations = 'RESIZE'

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

-- windows
if wezterm.target_triple == 'x86_64-pc-windows-msvc' then
  config.default_prog = { 'wsl' }
end
-- macos
if wezterm.target_triple == 'aarch64-apple-darwin' then
  config.macos_window_background_blur = 20
end

return config
