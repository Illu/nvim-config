vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use 'neovim/nvim-lspconfig'

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },           -- Optional
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },         -- Required
            { 'hrsh7th/cmp-nvim-lsp' },     -- Required
            { 'hrsh7th/cmp-buffer' },       -- Optional
            { 'hrsh7th/cmp-path' },         -- Optional
            { 'saadparwaiz1/cmp_luasnip' }, -- Optional
            { 'hrsh7th/cmp-nvim-lua' },     -- Optional

            -- Snippets
            { 'L3MON4D3/LuaSnip' },             -- Required
            { 'rafamadriz/friendly-snippets' }, -- Optional
        }
    }

    -- Fuzzy finder
    use {
        'nvim-telescope/telescope.nvim',
        branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } },
        file_ignore_patterns = { ".git/" }
    }

    -- Theme
    use { "catppuccin/nvim", as = "catppuccin" }

    -- Parsing
    use { 'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }

    -- quick switch between files
    use 'theprimeagen/harpoon'

    -- devicons
    use 'kyazdani42/nvim-web-devicons'

    -- comments
    use 'tpope/vim-commentary'

    -- Status line
    use 'nvim-lualine/lualine.nvim'

    -- Preview MD files
    use { "ellisonleao/glow.nvim", config = function() require("glow").setup() end }

    -- Git decorations (blame / preview diffs...)
    use {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup()
        end
    }

    -- Git wrapper for vim
    use "tpope/vim-fugitive"

    -- Terminal
    use 'numToStr/FTerm.nvim'

    -- prettier/eslint format etc
    use 'jose-elias-alvarez/null-ls.nvim'

    -- Color highlights
    use { 'norcalli/nvim-colorizer.lua', config = function() require('colorizer').setup() end }

    -- Auto close and rename HTML tags
    use { 'windwp/nvim-ts-autotag', config = function() require('nvim-ts-autotag').setup() end }
end)
