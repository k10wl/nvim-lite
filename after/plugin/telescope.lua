local telescope = require("telescope")
local builtin = require("telescope.builtin")
local action_layout = require("telescope.actions.layout")

vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
vim.keymap.set("n", "<leader>pb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fr", builtin.lsp_references, {})
vim.keymap.set("n", "<leader>fd", builtin.lsp_definitions, {})
vim.keymap.set("n", "<leader>ps", function()
    builtin.grep_string({ search = vim.fn.input("Grep: ") })
end)

telescope.setup {
    pickers = {
        colorscheme = {
            enable_preview = true,
        },
    },
    defaults = {
        mappings = {
            i = {
                ["<C-u>"] = false,
                ["<C-s>"] = action_layout.toggle_preview,
                ["<C-d>"] = "delete_buffer",
            },
            n = {
                ["dd"] = "delete_buffer",
                ["<C-s>"] = action_layout.toggle_preview,
            },
        },
    },
}
