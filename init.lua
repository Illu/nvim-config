vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set('n', '<leader>vd', vim.diagnostic.open_float)
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]])
vim.keymap.set('t', '<C-w>h', [[<C-\><C-n><C-w>h]])
vim.keymap.set('t', '<C-w>j', [[<C-\><C-n><C-w>j]])
vim.keymap.set('t', '<C-w>k', [[<C-\><C-n><C-w>k]])
vim.keymap.set('t', '<C-w>l', [[<C-\><C-n><C-w>l]])
vim.keymap.set('t', '<C-w>q', [[<C-\><C-n><C-w>q]])

vim.api.nvim_create_autocmd({ "TermOpen", "BufEnter" }, {
    pattern = "term://*",
    callback = function()
        vim.cmd("startinsert")
    end,
})

local options = {
    mouse = "a",
    cursorline = true,
    tabstop = 4,
    shiftwidth = 4,
    softtabstop = 4,
    expandtab = true,
    autoread = true,
    nu = true,
    foldlevelstart = 99,
    scrolloff = 10,
    writebackup = false,
    clipboard = "unnamedplus",
    showmode = false,
    swapfile = false,
    backup = false,
    undodir = os.getenv("HOME") .. "/.vim/undodir",
    undofile = true,
    smartindent = true,
    relativenumber = true,
    guicursor = "",
    termguicolors = true,
}

for k, v in pairs(options) do
    vim.opt[k] = v
end

-- lazy stuff
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup("plugins")

-- highlight when yanking
vim.api.nvim_create_autocmd('TextYankPost', {
    desc = "Highlight when yanking text",
    group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})

-- LSP setup

vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('UserLspConfig', {}),
    callback = function(ev)
        -- Enable completion triggered by <c-x><c-o>
        vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

        -- Buffer local mappings.
        -- See `:help vim.lsp.*` for documentation on any of the below functions
        local opts = { buffer = ev.buf }
        vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
        vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
        vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
        vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, opts)
        vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
        vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
        vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    end,
})

-- vim.keymap.set('n', '<leader>lf', function()
--     vim.lsp.buf.format()
-- end)
