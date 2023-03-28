vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  use 'nvim-lua/popup.nvim'
  use 'nvim-telescope/telescope-media-files.nvim'


  use({
    'rose-pine/neovim',
    as = 'rose-pine',
    config = function()
      require("rose-pine").setup()
    end
  })

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  use('mbbill/undotree')

  use('tpope/vim-fugitive')


  -- LSP with LSP-ZERO


  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' }, -- Required
      { 'williamboman/mason.nvim' }, -- Optional
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' }, -- Required
      { 'hrsh7th/cmp-nvim-lsp' }, -- Required
      { 'hrsh7th/cmp-buffer' }, -- Optional
      { 'hrsh7th/cmp-path' }, -- Optional
      { 'saadparwaiz1/cmp_luasnip' }, -- Optional
      { 'hrsh7th/cmp-nvim-lua' }, -- Optional

      -- Snippets
      { 'L3MON4D3/LuaSnip' }, -- Required
      { 'rafamadriz/friendly-snippets' }, -- Optional
    }
  }

  use 'kyazdani42/nvim-web-devicons'

  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }
  --productivity plugins
  use { 'toppair/peek.nvim', run = 'deno task --quiet build:fast' }

  use { 'nvim-neorg/neorg' }

  use {'RRethy/vim-hexokinase'}

  use { "jiangmiao/auto-pairs"  }
  use {'WIttyJudge/gruvbox-material.nvim'}
  use 'nvim-tree/nvim-tree.lua'
  use 'j-hui/fidget.nvim'
  use 'Mofiqul/dracula.nvim'

  use {
    "nvim-neo-tree/neo-tree.nvim",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    }
  }
end)
