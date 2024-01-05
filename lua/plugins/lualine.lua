return {
    'nvim-lualine/lualine.nvim',
    config = function()
        require("lualine").setup({
            options = {
                section_separators = '',
                component_separators = '',
                icons_enabled = false,
                theme = 'catppuccin',
                always_divide_middle = false,
                globalstatus = true,
            },
            sections = {
                lualine_a = { 'mode' },
                lualine_b = {},
                lualine_c = { { 'filename', path = 1 } },
                lualine_x = { 'filetype' },
                lualine_y = {},
                lualine_z = {},
            },
        })
    end,
}
