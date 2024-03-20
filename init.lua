 vim.cmd("set tabstop=4") -- number of visual spaces per TAB
 vim.cmd("set shiftwidth=4") -- size of an indent
 vim.cmd("set expandtab") -- use spaces instead of tabs
 vim.cmd("set softtabstop=4") 
 vim.cmd("set relativenumber") -- set relative line numbers
-- remap leader key top space
 vim.g.mapleader = " "
 vim.g.maplocalleader = " "
 --remap nohlsearch to <leader>/
 vim.api.nvim_set_keymap("n", "<leader>/", ":nohlsearch<CR>", { noremap = true, silent = true })
--remap live grep to <leader>lg
 vim.api.nvim_set_keymap("n", "<leader>lg", ":Telescope live_grep<CR>", { noremap = true, silent = true })
 --remap find files to <leader>ff
 vim.api.nvim_set_keymap("n", "<leader>ff", ":Telescope find_files<CR>", { noremap = true, silent = true })
 --remap find files in git to <leader>gf
 vim.api.nvim_set_keymap("n", "<leader>gf", ":Telescope git_files<CR>", { noremap = true, silent = true })
 --remap undotree toggle to <leader>u
 vim.api.nvim_set_keymap("n", "<leader>u", ":UndotreeToggle<CR>", { noremap = true, silent = true })
 -- remap cellular-automaton make it rain to <leader>fml
 vim.api.nvim_set_keymap("n", "<leader>fml", ":CellularAutomaton make_it_rain<CR>", { noremap = true, silent = true })
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({import="plugins"})

