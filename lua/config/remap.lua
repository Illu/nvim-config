------------
-- Global --
------------

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
-- vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)
vim.keymap.set("x", "<leader>p", "\"_dP")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

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

local telescope = require('telescope.builtin')

vim.keymap.set('n', '<leader>o', telescope.find_files, {})
vim.keymap.set('n', '<C-o>', telescope.git_files, {})
vim.keymap.set('n', '<leader>s', telescope.live_grep, {})

-------------
-- Trouble --
-------------

vim.keymap.set("n", "<leader>t", "<cmd>TroubleToggle<cr>",
  { silent = true, noremap = true }
)

--------------
-- GitSigns --
--------------

local gs = require("gitsigns")

vim.keymap.set('n', '<leader>g', gs.preview_hunk, {})
vim.keymap.set('n', '<leader>b', function() gs.blame_line { full = false } end)

--------------
-- Terminal --
--------------

local term = require("FTerm")

vim.keymap.set('n', '<C-`>', term.toggle, { noremap = true })
vim.keymap.set('t', '<C-`>', term.toggle, { noremap = true })
