return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local configs = require("nvim-treesitter.configs")
			configs.setup({
				ensure_installed = { "lua", "javascript", "html", "python", "css", "json", "bash" },
				sync_install = false,
				highlight = { enable = true },
				indent = { enable = true },
				rainbow = { enable = true },
			})
		end,
	},
}
