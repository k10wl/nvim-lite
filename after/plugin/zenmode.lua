local zen = require("zen-mode")


zen.setup({
  window = {
    width = 86,
    options = {
      number = false,
      relativenumber = false,
      colorcolumn = "0",
      cursorline = false,
      cursorcolumn = false,
      list = false
    }
  },
  plugins = {
    tmux = {
      enabled = true,
    },
    gitsigns = {
      enabled = true
    },
    options = {
      laststatus = 0,
    },
  }
})

vim.keymap.set('n', '<leader>zm', zen.toggle, {})
-- v for transparent gutters
vim.cmd('set background=dark')
