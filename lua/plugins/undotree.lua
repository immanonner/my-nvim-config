return {
	{
		"mbbill/undotree",
        event = "BufRead",
		config = function()
			--remap undotree toggle to <leader>u
			vim.api.nvim_set_keymap("n", "<leader>u", ":UndotreeToggle<CR>", { noremap = true, silent = true })
		end,
	},
}
