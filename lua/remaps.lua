-------Base Functionality Remaps-------

--remap leader kep to space
vim.g.mapleader = " "
--remap local leader key to /
vim.g.maplocalleader = "/"

--remap save to <leader>w
vim.api.nvim_set_keymap("n", "<leader>w", ":w<CR>", { noremap = true, silent = true })
--remap quit to <leader>q
vim.api.nvim_set_keymap("n", "<leader>qq", ":q!<CR>", { noremap = true, silent = true })
--remap save and quit to <leader>wq
vim.api.nvim_set_keymap("n", "<leader>q", ":wq<CR>", { noremap = true, silent = true })
--remap explore here to <leader>e
vim.api.nvim_set_keymap("n", "<leader>e.", ":Explore .<CR>", { noremap = true, silent = true })
--remap explore home to <leader>eh
vim.api.nvim_set_keymap("n", "<leader>eh", ":Explore ~<CR>", { noremap = true, silent = true })
--remap explore current file directory to <leader>
vim.api.nvim_set_keymap("n", "<leader>ed", ":Explore %:h<CR>", { noremap = true, silent = true })
--remap explore nvim config to <leader>ec
vim.api.nvim_set_keymap("n", "<leader>ec", ":Explore ~/.config/nvim<CR>", { noremap = true, silent = true })
--remap nohlsearch to <leader>/
vim.api.nvim_set_keymap("n", "<leader>/", ":nohlsearch<CR>", { noremap = true, silent = true })
--remap bprev to <leader>b
vim.api.nvim_set_keymap("n", "<leader>b", ":bprev<CR>", { noremap = true, silent = true })
--remap bnext to <leader>f
vim.api.nvim_set_keymap("n", "<leader>f", ":bnext<CR>", { noremap = true, silent = true })
-- TIP: Disable arrow keys in normal mode
vim.keymap.set("n", "<left>", '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set("n", "<right>", '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set("n", "<up>", '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set("n", "<down>", '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })
-------Plugin Remaps-------

-- Telekasten
-- Launch panel if nothing is typed after <leader>z
vim.keymap.set("n", "<leader>z", "<cmd>Telekasten panel<CR>")

-- Most used functions
vim.keymap.set("n", "<leader>zf", "<cmd>Telekasten find_notes<CR>")
vim.keymap.set("n", "<leader>zg", "<cmd>Telekasten search_notes<CR>")
vim.keymap.set("n", "<leader>zd", "<cmd>Telekasten goto_today<CR>")
vim.keymap.set("n", "<leader>zz", "<cmd>Telekasten follow_link<CR>")
vim.keymap.set("n", "<leader>zn", "<cmd>Telekasten new_note<CR>")
vim.keymap.set("n", "<leader>zc", "<cmd>Telekasten show_calendar<CR>")
vim.keymap.set("n", "<leader>zb", "<cmd>Telekasten show_backlinks<CR>")
vim.keymap.set("n", "<leader>zI", "<cmd>Telekasten insert_img_link<CR>")

-- Call insert link automatically when we start typing a link
vim.keymap.set("i", "[[", "<cmd>Telekasten insert_link<CR>")

