return {
    'nvim-telescope/telescope.nvim',
	dependencies = { 'nvim-lua/plenary.nvim' },
	keys = {
		{"<leader>o", "<cmd>Telescope find_files<cr>", {}},
		{"<leader>s", "<cmd>Telescope live_grep<cr>", {}},
		{"<C-o>", "<cmd>Telescope git_files<cr>", {}}
	}
}
