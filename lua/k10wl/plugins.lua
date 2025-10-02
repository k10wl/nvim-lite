local plugins = {
    {
        'ggml-org/llama.vim', -- check README.md for dependencies
        init = function()
            vim.g.llama_config = {
                show_info = false,
                keymap_trigger = "<C-f>",
                keymap_accept_full = "<Tab>",
                keymap_accept_line = "<C-e>",
                keymap_accept_word = "<C-j>",
            }
            vim.api.nvim_set_hl(0, "llama_hl_hint", { fg = "#808080", ctermfg = 209 })
            vim.api.nvim_set_hl(0, "llama_hl_info", { fg = "#50fa7b", ctermfg = 119 })
        end
    },

    {
        "stevearc/oil.nvim",
        opts = {
            view_options = {
                show_hidden = true,
            }
        },
        lazy = false,
    },

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
        opts_extend = { "sources.default" },
        enabled = function()
            return vim.env.CURSOR_TRACE_ID == nil
        end,
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
