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


return {
    'morhetz/gruvbox',
	lazy = false, -- make sure we load this during startup if it is your main colorscheme
	priority = 1000, -- make sure to load this before all the other start plugins
	config = function()
		-- require("catppuccin").setup({
		-- 	flavour = "mocha", -- latte, frappe, macchiato, mocha
		-- 	transparent_background = false,
		-- 	integrations = {
		-- 		telescope = true,
		-- 		harpoon = true,
		-- 	},
		-- })
		-- vim.cmd([[colorscheme catppuccin]])
		vim.cmd([[colorscheme gruvbox]])
	end,
}
