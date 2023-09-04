vim.g.mapleader = " "

vim.keymap.set("n", "<leader>ff", vim.lsp.buf.format)
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>x", ":bd!<CR>")
vim.keymap.set("n", "<leader>s", ":w<CR>")
vim.keymap.set("n", "<leader>br", ":bd! | e#<CR>")

vim.keymap.set('n', '<Tab>', ':bnext<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<S-Tab>', ':bprev<CR>', {noremap = true, silent = true})

-- vim.keymap.set("n", "<C-d>", "<C-d>zz")
-- vim.keymap.set("n", "<C-u>", "<C-u>zz")
