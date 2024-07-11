-- catppuccin
-- return {
-- 	"catppuccin/nvim",
-- 	lazy = false, -- make sure we load this during startup if it is your main colorscheme
-- 	priority = 1000, -- make sure to load this before all the other start plugins
-- 	config = function()
-- 		require("catppuccin").setup({
-- 			flavour = "mocha", -- latte, frappe, macchiato, mocha
-- 			transparent_background = false,
-- 			integrations = {
-- 				telescope = true,
-- 				harpoon = true,
-- 			},
-- 		})
-- 		vim.cmd([[colorscheme catppuccin]])
-- 	end,
-- }
--
-- gruvbox
return {
    'ellisonleao/gruvbox.nvim',
	lazy = false,
	priority = 1000,
	config = function()
        require("gruvbox").setup({
            palette_overrides = {
                dark0 = "#000000",
            },
            overrides = {
                Normal = {bg = "#000000"}
            },
            contrast="hard"
        })
        vim.o.background = "dark"
		vim.cmd([[colorscheme gruvbox]])
	end,
}
