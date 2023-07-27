vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true
vim.opt.colorcolumn = "80"
vim.opt.signcolumn = "yes"

vim.opt.updatetime = 100

vim.g.loaded_python3_provider = 0
vim.loader.enable()

vim.g.gruvbox_material_background = "medium"
vim.cmd("colorscheme gruvbox-material")

vim.cmd("highlight LineNr guibg=NONE")
vim.cmd("highlight SignColumn guibg=NONE")
