local opt = vim.opt

opt.relativenumber = true
opt.number = true

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

opt.wrap = false
opt.signcolumn = "yes"
opt.scrolloff = 10

opt.backspace = "indent,eol,start"
opt.termguicolors = true

opt.clipboard:append("unnamedplus") -- Use system clipboard for register
