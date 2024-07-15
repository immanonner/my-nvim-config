return {
    {
        "nvim-telescope/telescope.nvim",
        event = "VeryLazy",
        branch = "0.1.x",
        dependencies = { "nvim-lua/plenary.nvim", "BurntSushi/ripgrep" },
        config = function()
            require("telescope").setup({
                pickers = {
                    find_files = {
                        hidden = true,
                        follow = true,
                        no_ignore = false,
                    },
                },
            })
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
        event = "VeryLazy",
        config = function()
            require("telescope").load_extension("ui-select")
        end,
    },
}
