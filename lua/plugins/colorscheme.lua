return {
    {
        'goolord/alpha-nvim',
        config = function()
            require 'alpha'.setup(require 'alpha.themes.dashboard'.config)
        end
    },
    {
        "nvim-lualine/lualine.nvim",
        event = "VeryLazy",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        -- sets the theme to auto
        config = function()
            require("lualine").setup({
                options = {
                    theme         = "auto",
                    icons_enabled = true,

                },
            })
        end,
    },
    {
        "rebelot/kanagawa.nvim",
        name = "kanagawa",
        config = function()
            require("kanagawa").setup({
                transparent = true,
                colors = { theme = { all = { ui = { bg_gutter = "none" } } } },
            })
            vim.cmd("colorscheme kanagawa")
        end,
    },
}
