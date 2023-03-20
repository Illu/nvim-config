local telescope = require('telescope')

-- show hidden files in telescope

telescope.setup {
    pickers = {
        find_files = {
            hidden = true
        }
    }
}
