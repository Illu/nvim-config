local line = require('lualine')

local sections = {
    lualine_a = { 'mode' },
    lualine_b = {},
    lualine_c = { { 'filename', path = 1 } },
    lualine_x = { 'filetype' },
    lualine_y = {},
    lualine_z = {},
}

-- will try to generate a theme based on the current colorscheme
-- local custom_theme = require 'lualine.themes.auto'


line.setup {
    options = {
        section_separators = '',
        component_separators = '',
        icons_enabled = false,
        theme = 'catppuccin',
        always_divide_middle = false,
        globalstatus = true,
    },
    sections = sections,
}
