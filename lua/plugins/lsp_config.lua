return {
	{
		"williamboman/mason.nvim",
		event = "VeryLazy",
		config = function()
			require("mason").setup()
		end,
	},

	{
		"williamboman/mason-lspconfig.nvim",
		event = "VeryLazy",
		opts = { auto_install = true, auto_update = true },
	},
	{
		"neovim/nvim-lspconfig",
		event = "VeryLazy",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
				settings = {
					Lua = {
						diagnostics = {
							globals = { "vim" },
						},
					},
				},
				lspconfig.pyright.setup({
					capabilities = capabilities,
					settings = {
						pyright = {
							-- Using Ruff's import organizer
							disableOrganizeImports = true,
						},
						python = {
							analysis = {
								-- Ignore all files for analysis to exclusively use Ruff for linting
								ignore = { "*" },
							},
						},
					},
				}),
				lspconfig.ruff_lsp.setup({
					capabilities = capabilities,
					init_options = {
						settings = {
							-- Any extra CLI arguments for `ruff` go here.
							args = { "--config=~/.config/nvim/lua/ruff/ruff.toml" },
						},
					},
				}),
                lspconfig.tsserver.setup({
                    capabilities = capabilities,
                }),
                lspconfig.bashls.setup({
                    capabilities = capabilities,
                }),
			})
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {})
			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
			vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, {})
		end,
	},
}
