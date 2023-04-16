local wezterm = require 'wezterm'
local act = wezterm.action

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.color_scheme = 'nordfox'
config.font = wezterm.font_with_fallback({
  'CaskaydiaCove Nerd Font Mono',
})
config.window_background_opacity = 0.95

config.window_frame = {
  font = wezterm.font({ family = 'CaskaydiaCove Nerd Font Mono', weight = 'Bold' }),
  font_size = 13.0,
  active_titlebar_bg = '#353C4A',
  inactive_titlebar_bg = '#353C4A',
}

-- config.tab_bar_at_bottom = true
-- config.use_fancy_tab_bar = false
config.inactive_pane_hsb = {
  saturation = 1.0,
  brightness = 0.6,
}

config.keys = {
  {
    key = 't',
    mods = 'ALT',
    action = act.SpawnTab('CurrentPaneDomain'),
  },
  {
    key = 'w',
    mods = 'ALT',
    action = wezterm.action.CloseCurrentTab({ confirm = false }),
  },
  {
    key = 'w',
    mods = 'ALT|SHIFT',
    action = wezterm.action.CloseCurrentPane({ confirm = false }),
  },
  {
    key = 'h',
    mods = 'ALT',
    action = act.ActivateTabRelative(-1),
  },
  {
    key = 'l',
    mods = 'ALT',
    action = act.ActivateTabRelative(1),
  },
  {
    key = 'h',
    mods = 'ALT|SHIFT',
    action = act.ActivatePaneDirection('Left'),
  },
  {
    key = 'l',
    mods = 'ALT|SHIFT',
    action = act.ActivatePaneDirection('Right'),
  },
  {
    key = 'k',
    mods = 'ALT|SHIFT',
    action = act.ActivatePaneDirection('Up'),
  },
  {
    key = 'j',
    mods = 'ALT|SHIFT',
    action = act.ActivatePaneDirection('Down'),
  },
  {
    key = 'v',
    mods = 'ALT|SHIFT',
    action = act.SplitVertical({ domain = 'CurrentPaneDomain' }),
  },
  {
    key = 'b',
    mods = 'ALT|SHIFT',
    action = act.SplitHorizontal({ domain = 'CurrentPaneDomain' }),
  },
}

config.colors = {
  tab_bar = {
    background = '#353C4A',
    inactive_tab_edge = '#435061',

    active_tab = {
      bg_color = '#81A1C1',
      fg_color = '#282D38',
    },

    inactive_tab = {
      bg_color = '#435061',
      fg_color = '#CDCECF',
    },

    inactive_tab_hover = {
      bg_color = '#81A1C1',
      fg_color = '#282D38',
    },

    new_tab = {
      bg_color = '#435061',
      fg_color = '#CDCECF',
    },

    new_tab_hover = {
      bg_color = '#81A1C1',
      fg_color = '#282D38',
    },
  },
  -- tab_bar = {
  --   background = '#353C4A',
  --   inactive_tab_edge = '#9B8E8A',
  --
  --   active_tab = {
  --     bg_color = '#5071B2',
  --     fg_color = '#ffffff',
  --   },
  --
  --   inactive_tab = {
  --     bg_color = '#9B8E8A',
  --     fg_color = '#000000',
  --   },
  --
  --   inactive_tab_hover = {
  --     bg_color = '#5071B2',
  --     fg_color = '#ffffff',
  --   },
  --
  --   new_tab = {
  --     bg_color = '#9B8E8A',
  --     fg_color = '#000000',
  --   },
  --
  --   new_tab_hover = {
  --     bg_color = '#5071B2',
  --     fg_color = '#ffffff',
  --   },
  -- },
  -- tab_bar = {
  --   inactive_tab_edge = '#2E3440',
  --   background = '#353C4A',
  --
  --   active_tab = {
  --     bg_color = '#434C5E',
  --     fg_color = '#c0c0c0',
  --   },
  --
  --   inactive_tab = {
  --     bg_color = '#2E3440',
  --     fg_color = '#c0c0c0',
  --   },
  --
  --   inactive_tab_hover = {
  --     bg_color = '#434C5E',
  --     fg_color = '#c0c0c0',
  --   },
  --
  --   new_tab = {
  --     bg_color = '#434C5E',
  --     fg_color = '#c0c0c0',
  --   },
  --
  --   new_tab_hover = {
  --     bg_color = '#81A1C1',
  --     fg_color = '#434C5E',
  --   },
  -- },
}

return config
