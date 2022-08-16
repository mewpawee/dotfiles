local wezterm = require 'wezterm';
return{
  color_scheme = "Dracula+",
  font = wezterm.font("FiraCode Nerd Font", {weight ="Medium", stretch="Normal", style="Normal"}),
  font_size = 16,
  window_background_opacity = 0.96,
  keys = {
    {
      key = 'G',
      mods = 'CTRL|SHIFT|ALT',
      action = wezterm.action.SplitPane {
        direction = 'Down',
        command = { args = { '/opt/homebrew/bin/gotop' } },
      },
    },
    -- adjust pane
    { key = "H", mods = "CMD|SHIFT", action=wezterm.action{AdjustPaneSize={"Left", 5}}},
    { key = "J", mods = "CMD|SHIFT", action=wezterm.action{AdjustPaneSize={"Down", 5}}},
    { key = "K", mods = "CMD|SHIFT", action=wezterm.action{AdjustPaneSize={"Up", 5}}},
    { key = "L", mods = "CMD|SHIFT", action=wezterm.action{AdjustPaneSize={"Right", 5}}},
    -- select pane
    { key = "H", mods = "CTRL|SHIFT", action=wezterm.action{ActivatePaneDirection="Left"}},
    { key = "J", mods = "CTRL|SHIFT", action=wezterm.action{ActivatePaneDirection="Down"}},
    { key = "K", mods = "CTRL|SHIFT", action=wezterm.action{ActivatePaneDirection="Up"}},
    { key = "L", mods = "CTRL|SHIFT", action=wezterm.action{ActivatePaneDirection="Right"}},
  }
}


