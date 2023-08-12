local telescope = require('telescope')
local actions = require('telescope.actions')
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>pb', builtin.buffers, {})
vim.keymap.set('n', '<leader>pg', builtin.git_status, {})
vim.keymap.set('n', '<leader>ps', function()
  builtin.grep_string({ search = vim.fn.input('Grep: ') })
end)

telescope.setup{
  defaults = {
    mappings = {
      i = {
        ["<C-w>"] = "delete_buffer",
      },
      n = {
        ["d"] = "delete_buffer",
      },
    },
  },
}
