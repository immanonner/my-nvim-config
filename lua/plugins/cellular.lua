return{    {"eandrju/cellular-automaton.nvim",
        config = function()
        -- remap cellular-automaton make it rain to <leader>fml
        vim.api.nvim_set_keymap("n", "<leader>fml", ":CellularAutomaton make_it_rain<CR>", { noremap = true, silent = true })
        end},}
