local cmp = require "cmp"

local insert_mapping = {
    ["<C-n>"] = cmp.mapping.select_next_item(),
    ["<C-p>"] = cmp.mapping.select_prev_item(),
    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-y>"] = cmp.mapping.confirm { select = true },
    ["<C-e>"] = cmp.mapping.confirm { select = true },
    ["<C-j>"] = cmp.mapping.confirm { select = true },
    ["<C-m>"] = cmp.mapping.confirm { select = true },
    ["<CR>"] = cmp.mapping.confirm { select = true },
    ["<C-Space>"] = cmp.mapping.complete {},
    ["<esc>"] = cmp.mapping.abort(),
}

local cmdline_mapping = {
    ["<Tab>"] = cmp.mapping.select_next_item(),
    ["<S-Tab>"] = cmp.mapping.select_prev_item(),
    ["<C-e>"] = {
        c = function(fallback)
            if cmp.visible() then
                cmp.confirm()
            else
                fallback()
            end
        end,
    }
}

cmp.setup {
    completion = {
        completeopt = "menu,menuone,noinsert",
    },

    -- For an understanding of why these mappings were
    -- chosen, you will need to read `:help ins-completion`
    --
    -- No, but seriously. Please read `:help ins-completion`, it is really good!
    mapping = cmp.mapping.preset.insert(insert_mapping),
    sources = {
        { name = "nvim_lsp" },
        { name = "async_path" },
    },
}

cmp.setup.cmdline({ "/", "?" }, {
    mapping = cmp.mapping.preset.cmdline(cmdline_mapping),
    sources = {
        { name = "buffer" }
    }
})

vim.api.nvim_create_user_command(
    "CmpDisable",
    function()
        cmp.suspend()
    end,
    { desc = "Disable completion" }
)
vim.api.nvim_create_user_command(
    "CmpEnable",
    function()
        cmp.suspend()() -- hack? idk, saw in source code
    end,
    { desc = "Enable completion" }
)

vim.cmd('CmpDisable')
