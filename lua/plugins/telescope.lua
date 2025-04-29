return {
    'nvim-telescope/telescope.nvim',
	dependencies = { 'nvim-lua/plenary.nvim' },
	keys = {
		{"<leader>ff", "<cmd>Telescope find_files<cr>", {}},
		{"<leader>fg", "<cmd>Telescope live_grep<cr>", {}},
		{"<leader>fs", "<cmd>Telescope grep_string<cr>", {}},
		{"<leader>fb", "<cmd>Telescope buffers<cr>", {}},
		{"<C-o>", "<cmd>Telescope git_files<cr>", {}}
	}
}
