-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
  -- Packer can manage itself
  use "wbthomason/packer.nvim"

  use {
    "nvim-telescope/telescope.nvim", tag = "0.1.2",
    requires = { {"nvim-lua/plenary.nvim"} }
  }
  use {
    "catppuccin/nvim",
    as = "catppuccin",
    config = function()
      vim.cmd("colorscheme catppuccin")
    end
  }

  use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }

  use { "ThePrimeagen/harpoon" }

  use { "mbbill/undotree" }

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

  use { "lewis6991/gitsigns.nvim"}

  use { "hrsh7th/nvim-cmp" }

  use {
    "glepnir/dashboard-nvim",
    event = "VimEnter",
    config = function()
      require("k10wl.dashboard")
    end,
    requires = {"nvim-tree/nvim-web-devicons"}
  }
end)
