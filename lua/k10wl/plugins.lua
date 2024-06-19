local plugins = {
    { -- Telescope
        "nvim-telescope/telescope.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
    },


    -- Git
    "tpope/vim-fugitive",
    "lewis6991/gitsigns.nvim",

    -- Quality of life
    "nvim-treesitter/nvim-treesitter",
    "stevearc/oil.nvim",
    "mbbill/undotree",

    { -- Theme
        "catppuccin/nvim",
        lazy = false,
        priority = 1000,
    },
    { -- Theme
        "xiyaowong/transparent.nvim",
        lazy = false,
        priority = 1000,
    },
    "folke/zen-mode.nvim",

    { -- LSP
        "neovim/nvim-lspconfig",
        dependencies = {
            { "williamboman/mason.nvim", config = true }, -- NOTE: Must be loaded before dependants
            "williamboman/mason-lspconfig.nvim",
            "WhoIsSethDaniel/mason-tool-installer.nvim",
            { "j-hui/fidget.nvim",       opts = {} },
            { "folke/neodev.nvim",       opts = {} },
        },
        config = function()
        end,
    },

    { -- Autoformat
        "stevearc/conform.nvim",
        lazy = false,
        keys = {
            {
                "<leader>f",
                function()
                    require("conform").format { async = true, lsp_fallback = true }
                end,
                mode = "",
                desc = "[F]ormat buffer",
            },
        },
    },

    { -- Autocompletion
        "hrsh7th/nvim-cmp",
        dependencies = {
            -- Snippet Engine & its associated nvim-cmp source
            {
                "L3MON4D3/LuaSnip",
                build = (function()
                    -- Build Step is needed for regex support in snippets.
                    -- This step is not supported in many windows environments.
                    -- Remove the below condition to re-enable on windows.
                    if vim.fn.has "win32" == 1 or vim.fn.executable "make" == 0 then
                        return
                    end
                    return "make install_jsregexp"
                end)(),
            },
            "saadparwaiz1/cmp_luasnip",
            "hrsh7th/cmp-nvim-lsp",
            "https://codeberg.org/FelipeLema/cmp-async-path.git",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-cmdline",
        }
    },
}

return plugins
