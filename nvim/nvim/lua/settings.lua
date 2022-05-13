local opt = vim.opt
local g = vim.g
local cmd = vim.cmd

-- Tab settings
opt.expandtab = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.autoindent = true

-- General settings
opt.errorbells = false
opt.number = true
opt.relativenumber = true
opt.wrap = false
opt.smartcase = true
opt.swapfile = false
opt.backup = false
opt.undodir = "~/.nvim/undodir"
opt.undofile = true
opt.incsearch = true
opt.hidden = true
opt.cmdheight = 2
opt.shortmess:append({ c = true })
opt.termguicolors = true
opt.updatetime = 300

-- Color theme settings
g.dracula_italic = 0
g.lightline = { colorscheme = "dracula" }

cmd "colorscheme dracula"

cmd "highlight LineNr guibg=NONE"
cmd "highlight SignColumn guibg=NONE"
