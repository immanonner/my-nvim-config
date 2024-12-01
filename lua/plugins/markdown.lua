return {
    {
        "iamcco/markdown-preview.nvim",
        event = "VeryLazy",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        build = "cd app && yarn install",
        init = function()
            vim.g.mkdp_filetypes = { "markdown", "telekasten" }
            vim.g.mkdp_browser = "chrome"
            vim.g.mkdp_page_title = "${name}"
        end,
        ft = { "markdown", "telekasten" },
    },
    --{
    --    "ellisonleao/glow.nvim",
    --    config = function()
    --        local glow = require("glow")
    --        glow.setup()
    --    end,
    --},
}
