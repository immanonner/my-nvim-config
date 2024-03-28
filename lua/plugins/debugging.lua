return {
    "mfussenegger/nvim-dap",
    config = function()
        local dap = require("dap")
        vim.keymap.set("n", "<leader>dt", dap.toggle_breakpoint, {})
        vim.keymap.set("n", "<leader>dc", dap.continue, {})
    end,
}
