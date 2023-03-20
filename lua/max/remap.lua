------------
-- Global --
------------

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-------------
-- Harpoon --
-------------

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<leader>e", ui.toggle_quick_menu)
vim.keymap.set("n", "<leader>q", ui.nav_prev)
vim.keymap.set("n", "<leader>w", ui.nav_next)

vim.keymap.set("n", "<leader>1", function() ui.nav_file(1) end)
vim.keymap.set("n", "<leader>2", function() ui.nav_file(2) end)
vim.keymap.set("n", "<leader>3", function() ui.nav_file(3) end)
vim.keymap.set("n", "<leader>4", function() ui.nav_file(4) end)

---------------
-- Telescope --
---------------

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>o', builtin.find_files, {})
vim.keymap.set('n', '<C-o>', builtin.git_files, {})
vim.keymap.set('n', '<leader>s', builtin.live_grep, {})

