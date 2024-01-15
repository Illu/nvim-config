return {
    'lewis6991/gitsigns.nvim',
    init = function ()
        require('gitsigns').setup()
    end,
    config = function ()
        local gs = require("gitsigns")
        vim.keymap.set("n", "<leader>g", gs.preview_hunk)
        vim.keymap.set("n", "<leader>b", function() gs.blame_line {full = false } end)
    end,
}
