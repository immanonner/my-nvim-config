return {
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        build = "cd app && yarn install",
        init = function()
            vim.g.mkdp_filetypes = { "markdown" }
            vim.g.mkdp_browser = "chrome"
        end,
        ft = { "markdown" },
    },
    --{
    --    "ellisonleao/glow.nvim",
    --    config = function()
    --        local glow = require("glow")
    --        glow.setup()
    --    end,
    --},
}
