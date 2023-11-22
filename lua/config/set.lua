local options = {
    ma = true,
    mouse = "a",
    cursorline = true,
    tabstop = 4,
    shiftwidth = 4,
    softtabstop = 4,
    expandtab = true,
    autoread = true,
    nu = true,
    foldlevelstart = 99,
    scrolloff = 8,
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
