vim.g.mapleader = " "

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.opt.spelllang = "en_us"
vim.opt.spell = true

vim.opt.cursorline = true
vim.opt.cursorcolumn = true

vim.opt.wrap = true
vim.opt.background = "dark"

vim.opt.laststatus = 1
vim.opt.ruler = false
vim.opt.showcmd = false

vim.opt.listchars = "tab:⟶ ,trail:·,extends:>,precedes:<,nbsp:%,space:·,eol:↵"
vim.opt.list = true
vim.cmd("let g:ftplugin_sql_omni_key = '<C-j>'")
