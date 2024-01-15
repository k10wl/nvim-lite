-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
  -- Packer can manage itself
  use "wbthomason/packer.nvim"

  use {
    "nvim-telescope/telescope.nvim", tag = "0.1.2",
    requires = { {"nvim-lua/plenary.nvim"} }
  }
  use { "lewis6991/gitsigns.nvim"}
  use{ "tpope/vim-fugitive" }

  use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }

  use {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v2.x",
    requires = {
      -- LSP Support
      {"neovim/nvim-lspconfig"},             -- Required
      {"williamboman/mason.nvim"},           -- Optional
      {"williamboman/mason-lspconfig.nvim"}, -- Optional

      -- Autocompletion
      {"hrsh7th/nvim-cmp"},     -- Required
      {"hrsh7th/cmp-nvim-lsp"}, -- Required
      {"L3MON4D3/LuaSnip"},     -- Required
    }
  }


 use {"mbbill/undotree"}

 use {"hrsh7th/nvim-cmp"}
 use {"hrsh7th/cmp-nvim-lsp"}
 use {'neovim/nvim-lspconfig'}
 use {'hrsh7th/cmp-nvim-lsp'}
 use {'hrsh7th/cmp-buffer'}
 use {'hrsh7th/cmp-path'}
 use {'hrsh7th/cmp-cmdline'}
 use {'hrsh7th/nvim-cmp'}

  -- Visuals
  use {
    "catppuccin/nvim",
    as = "catppuccin",
    config = function()
      vim.cmd("colorscheme catppuccin")
    end
  }
  use { "xiyaowong/transparent.nvim" }
  use { "folke/zen-mode.nvim" }
end)
