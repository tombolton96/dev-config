local wezterm = require 'wezterm';

return {
  keys = {
    -- This will create a new split and run your default program inside it
    {key="d", mods="SUPER",
      action=wezterm.action{SplitHorizontal={domain="CurrentPaneDomain"}}},
    -- This will create a new split and run your default program inside it
    {key="d", mods="SUPER|SHIFT",
      action=wezterm.action{SplitVertical={domain="CurrentPaneDomain"}}},
    -- This will close current pane
    {key="w", mods="SUPER", action=wezterm.action{CloseCurrentPane={confirm=true}}},
    -- Moving focus between panes in current tab
    {key = "LeftArrow", mods="SUPER|ALT",
      action=wezterm.action{ActivatePaneDirection="Left"}},
    {key = "RightArrow", mods="SUPER|ALT",
      action=wezterm.action{ActivatePaneDirection="Right"}},
    {key = "UpArrow", mods="SUPER|ALT",
      action=wezterm.action{ActivatePaneDirection="Up"}},
    {key = "DownArrow", mods="SUPER|ALT",
      action=wezterm.action{ActivatePaneDirection="Down"}},
    -- Moving focus between tabs
    {key="LeftArrow", mods="SUPER", action=wezterm.action{ActivateTabRelative=-1}},
    {key="RightArrow", mods="SUPER", action=wezterm.action{ActivateTabRelative=1}},
    -- Rebind OPT-Left, OPT-Right as ALT-b, ALT-f respectively to match Terminal.app behavior
    {key="LeftArrow", mods="OPT", action={SendKey={key="b", mods="ALT"}}},
    {key="RightArrow", mods="OPT", action={SendKey={key="f", mods="ALT"}}},
  },

  color_scheme = "Tokyo Night",

  color_schemes = {
    ["Tokyo Night"] = {
      foreground = "#c0caf5",
      background = "#1a1b26",
      cursor_bg = "#c0caf5",
      cursor_border = "#c0caf5",
      cursor_fg = "#1a1b26",
      selection_bg = "#33467C",
      selection_fg = "#c0caf5",
  
      ansi = {"#15161E", "#f7768e", "#9ece6a", "#e0af68", "#7aa2f7", "#bb9af7", "#7dcfff", "#a9b1d6"},
      brights = {"#414868", "#f7768e", "#9ece6a", "#e0af68", "#7aa2f7", "#bb9af7", "#7dcfff", "#c0caf5"},
    },
  },
}
