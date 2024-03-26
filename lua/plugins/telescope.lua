return {
	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		dependencies = { "nvim-lua/plenary.nvim", "BurntSushi/ripgrep" },
		config = function()
			--remap live grep to <leader>lg
			vim.api.nvim_set_keymap("n", "<leader>lg", ":Telescope live_grep<CR>", { noremap = true, silent = true })
			--remap find files to <leader>ff
			vim.api.nvim_set_keymap("n", "<leader>ff", ":Telescope find_files<CR>", { noremap = true, silent = true })
			--remap find files in git to <leader>gf
			vim.api.nvim_set_keymap("n", "<leader>gf", ":Telescope git_files<CR>", { noremap = true, silent = true })
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").load_extension("ui-select")
		end,
	},
}
