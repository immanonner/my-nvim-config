-------Base Functionality Remaps-------

--remap leader kep to space
vim.g.mapleader = " "
--remap local leader key to /
vim.g.maplocalleader = "/"

--remap save to <leader>w
vim.api.nvim_set_keymap("n", "<leader>w", ":w<CR>", { noremap = true, silent = true })
--remap quit to <leader>q
vim.api.nvim_set_keymap("n", "<leader>q", ":q<CR>", { noremap = true, silent = true })
--remap save and quit to <leader>wq
vim.api.nvim_set_keymap("n", "<leader>wq", ":wq<CR>", { noremap = true, silent = true })
--remap nohlsearch to <leader>/
vim.api.nvim_set_keymap("n", "<leader>/", ":nohlsearch<CR>", { noremap = true, silent = true })
--remap bprev to <leader>b
vim.api.nvim_set_keymap("n", "<leader>b", ":bprev<CR>", { noremap = true, silent = true })
--remap bnext to <leader>f
vim.api.nvim_set_keymap("n", "<leader>f", ":bnext<CR>", { noremap = true, silent = true })

-------Plugin Remaps-------
-- remap leader key top space
vim.g.copilot_workspace_folders = { "~/.config/nvim/", "~/ScriptingPlayground/" }
