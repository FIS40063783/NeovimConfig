-- Ensure that file encoding is always UTF-8
vim.opt.fileencoding = "utf-8"

-- Basic UI settings
vim.opt.termguicolors = true
vim.opt.guicursor = "i:block"
vim.opt.number = true
vim.opt.cursorline = true
vim.opt.showmode = false

-- Text format settings
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.smarttab = true
vim.opt.wrap = false

vim.opt.iskeyword:append('-')
vim.opt.formatoptions:remove('cro')
vim.opt.clipboard = 'unnamedplus'
