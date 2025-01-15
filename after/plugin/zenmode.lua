local zen = require("zen-mode")

zen.setup({
  window = {
    width = 86,
    options = {
      number = false,
      relativenumber = false,
      colorcolumn = "0"
    }
  },
  plugins = {
    tmux = {
      enabled = true,
    },
    gitsigns = {
      enabled = true
    }
  }
})

vim.keymap.set('n', '<leader>zm', zen.toggle, {})
-- v for transparent gutters
vim.cmd('set background=dark')
