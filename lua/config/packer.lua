vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use { 'neovim/nvim-lspconfig' }

  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
      -- LSP Support
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
  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
  use('nvim-treesitter/playground')

  -- quick switch between files
  use('theprimeagen/harpoon')

  -- comments
  use('tpope/vim-commentary')

  -- Status line
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- Preview MD files
  use { "ellisonleao/glow.nvim", config = function() require("glow").setup() end }

  -- devicons
  use("nvim-tree/nvim-web-devicons")

  -- Error/warning window
  use {
    "folke/trouble.nvim",
    requires = "nvim-tree/nvim-web-devicons",
    config = function()
      require("trouble").setup {}
    end
  }

  -- Git decorations (blame / preview diffs...)
  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end
  }

  -- Terminal
  use('numToStr/FTerm.nvim')

  -- 69420
  use('theprimeagen/vim-be-good')

  -- prettier/eslint format etc
  use('jose-elias-alvarez/null-ls.nvim')

  -- Color highlights
  use {'norcalli/nvim-colorizer.lua', config = function() require('colorizer').setup() end }
end)
