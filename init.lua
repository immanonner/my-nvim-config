 vim.cmd("set tabstop=4") -- number of visual spaces per TAB
 vim.cmd("set shiftwidth=4") -- size of an indent
 vim.cmd("set expandtab") -- use spaces instead of tabs
 vim.cmd("set softtabstop=4")
 vim.cmd("set relativenumber") -- set relative line numbers
 vim.cmd("set termguicolors") -- enable 24-bit RGB colors
-- remap leader key top space
 vim.g.mapleader = " "
 vim.g.maplocalleader = "/"
 vim.g.copilot_workspace_folders = {"~/.config/nvim/", "~/ScriptingPlayground/"}

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

require("lazy").setup("plugins")

require("remaps")
