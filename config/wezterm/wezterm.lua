-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- Geometry 
config.initial_cols = 120
config.initial_rows = 28

-- Fonts, theming and stuff
config.font_size = 12
config.color_scheme = 'AdventureTime'
config.font_dirs = { '/usr/share/fonts/truetype' }
config.color_scheme = 'Tokyo Night Storm'



return config
