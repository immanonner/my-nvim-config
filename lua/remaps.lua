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
