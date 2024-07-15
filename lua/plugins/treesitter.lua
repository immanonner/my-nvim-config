return {
	{
		"nvim-treesitter/nvim-treesitter",
        event = "BufRead",
		build = ":TSUpdate",
		config = function()
			local configs = require("nvim-treesitter.configs")
			configs.setup({
				ensure_installed = { "lua", "javascript", "html", "python", "css", "json", "bash", "markdown", "latex", "markdown_inline" },
                auto_install = true,
				sync_install = false,
				highlight = { enable = true },
				indent = { enable = true },
				rainbow = { enable = true },
			})
            vim.treesitter.language.register("markdown","telekasten")
		end,
	},
}
