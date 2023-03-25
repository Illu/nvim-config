local line = require('lualine')

local sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {},
    lualine_x = { 'filetype' },
    lualine_y = { 'filename' },
    lualine_z = { 'mode' },
}

local custom_theme = require'lualine.themes.auto'

custom_theme.normal.c.bg = '#00000000'

line.setup {
  options = {
    icons_enabled = true,
    -- will try to generate a theme based on the current colorscheme
    theme = custom_theme,
    always_divide_middle = false,
    globalstatus = true,
  },
  sections = sections,
}
