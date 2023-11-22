local telescope = require('telescope')

telescope.setup {
    defaults = {
-- prompt_prefix = "$ ",
    },
    pickers = {
        -- show hidden files in telescope
        find_files = {
            hidden = true
        }
    }
}
