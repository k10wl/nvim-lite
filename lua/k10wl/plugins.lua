local plugins = {
    "stevearc/oil.nvim",

    "tpope/vim-fugitive",
    "lewis6991/gitsigns.nvim",

    "nvim-treesitter/nvim-treesitter",

    {
        "neovim/nvim-lspconfig",
        dependencies = {
            {
                "williamboman/mason.nvim",
                config = true,
                dependencies = {
                    "williamboman/mason-lspconfig.nvim",
                    "WhoIsSethDaniel/mason-tool-installer.nvim",
                },
            },
            { "folke/lazydev.nvim", lazy = true, opts = {} },
        },
    },

    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "https://codeberg.org/FelipeLema/cmp-async-path.git",
        }
    },

    {
        "stevearc/conform.nvim",
        lazy = false,
        keys = {
            {
                "<leader>f",
                function()
                    require("conform").format { lsp_fallback = true }
                end,
                mode = "",
                desc = "[F]ormat buffer",
            },
        },
    },
}

return plugins
