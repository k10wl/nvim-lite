local telescope = require('telescope')
local actions = require('telescope.actions')
local builtin = require('telescope.builtin')
local action_layout = require("telescope.actions.layout")

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>pc', builtin.current_buffer_fuzzy_find, {})
vim.keymap.set('n', '<leader>pb', builtin.buffers, {})
vim.keymap.set('n', '<leader>pg', builtin.git_status, {})
vim.keymap.set('n', '<leader>gl', builtin.git_commits, {})
vim.keymap.set('n', '<leader>gb', builtin.git_branches, {})
vim.keymap.set('n', '<leader>fr', builtin.lsp_references, {})
vim.keymap.set('n', '<leader>fd', builtin.lsp_definitions, {})
vim.keymap.set('n', '<leader>ps', function()
  builtin.grep_string({ search = vim.fn.input('Grep: ') })
end)

telescope.setup{
  defaults = {
    mappings = {
      i = {
        ["<C-u>"] = false,
        ["<C-s>"] = action_layout.toggle_preview,
      },
      n = {
        ["d"] = "delete_buffer",
        ["<C-s>"] = action_layout.toggle_preview,
      },
    },
  },
}
