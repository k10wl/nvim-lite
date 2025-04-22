local plugins = {
    {
        "supermaven-inc/supermaven-nvim",
        config = function()
            require("supermaven-nvim").setup({})
        end,
    },

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
        'saghen/blink.cmp',
        version = '1.*',
        ---@module 'blink.cmp'
        ---@type blink.cmp.Config
        opts = {
            keymap = { preset = 'default' },
            appearance = {
                nerd_font_variant = 'mono'
            },
            completion = { documentation = { auto_show = true } },
            sources = {
                default = { 'lsp', 'path', 'buffer' },
            },
            fuzzy = { implementation = "prefer_rust_with_warning" },
            cmdline = { enabled = false },
        },
        opts_extend = { "sources.default" }
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
