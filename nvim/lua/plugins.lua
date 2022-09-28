vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}

  use 'lervag/vimtex'

  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugins

  use { "mfussenegger/nvim-jdtls", ft = { "java" }}

  use {"akinsho/toggleterm.nvim", tag = 'v1.*', config = function()
       require("toggleterm").setup()
       end}

  use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }}

  use {
 'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} }}

  use {
        "hrsh7th/nvim-cmp",
        requires = {
            "hrsh7th/cmp-buffer", "hrsh7th/cmp-nvim-lsp",
            'quangnguyen30192/cmp-nvim-ultisnips', 'hrsh7th/cmp-nvim-lua',
            'octaltree/cmp-look', 'hrsh7th/cmp-path', 'hrsh7th/cmp-calc',
            'f3fora/cmp-spell', 'hrsh7th/cmp-emoji'
        }
    }

    use {
    "williamboman/nvim-lsp-installer",
    "neovim/nvim-lspconfig",
    }

    use {
    'goolord/alpha-nvim',
    requires = { 'kyazdani42/nvim-web-devicons' },
    config = function ()
        require'alpha'.setup(require'alpha.themes.startify'.config)
    end
    }

    use "steelsojka/pears.nvim"

    use "kyazdani42/nvim-web-devicons"

    vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

    use {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = { 
      "nvim-lua/plenary.nvim",
      "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    }
  }

end)
