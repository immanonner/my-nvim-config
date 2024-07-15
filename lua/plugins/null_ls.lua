return {
    {
        "nvimtools/none-ls.nvim",
        event = "VeryLazy",
        config = function()
            local null_ls = require("null-ls")
            null_ls.setup({
                sources = {
                    null_ls.builtins.formatting.stylua,
                    -- 	null_ls.builtins.formatting.black,
                    --  null_ls.builtins.formatting.isort,
                    --  null_ls.builtins.diagnostics.pylint,
                    -- null_ls.builtins.completion.spell,
                    null_ls.builtins.code_actions.refactoring,
                    null_ls.builtins.formatting.shfmt,
                },
            })
            vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, {})
        end,
    },
}
