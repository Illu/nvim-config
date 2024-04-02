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

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
-- does this conflict with neoformat? 
-- TODO: this gets overwritten by the neoformat config
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)
-- what does this do?
-- vim.keymap.set("x", "<leader>p", "\"_dP")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

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


-- highlight when yanking
vim.api.nvim_create_autocmd('TextYankPost', {
    desc = "Highlight when yanking text",
    group = vim.api.nvim_create_augroup('highlight-yank', {clear = true}),
    callback = function()
        vim.highlight.on_yank()
    end,
})

require("lazy").setup("plugins")
