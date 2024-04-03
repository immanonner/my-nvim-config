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


