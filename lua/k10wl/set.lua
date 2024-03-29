vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
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

vim.opt.laststatus = 3 -- global status line

vim.g.netrw_banner = false

vim.opt.listchars = "tab:⟶\\ ,trail:·,extends:>,precedes:<,nbsp:%,space:·,eol:↵"
vim.opt.list = true
