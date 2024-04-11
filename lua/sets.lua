--set global options
vim.opt.tabstop=4 -- number of visual spaces per TAB
vim.opt.shiftwidth=4 -- size of an indent
vim.opt.expandtab= true -- use spaces instead of tabs
vim.opt.softtabstop=4
vim.opt.termguicolors = true-- enable 24-bit RGB colors
vim.opt.relativenumber = true -- show line numbers
-- highlight current line number
-- vim.opt.cursorline -- highlight current line
vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"
vim.filetype.add({extension = {md = 'markdown'}})
