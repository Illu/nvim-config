local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>o', builtin.find_files, {})
vim.keymap.set('n', '<C-o>', builtin.git_files, {})
vim.keymap.set('n', '<leader>s', builtin.live_grep, {})

