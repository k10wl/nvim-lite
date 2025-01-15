vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set('n', '<Tab>', ':bnext<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<S-Tab>', ':bprev<CR>', {noremap = true, silent = true})
