--set global options
vim.opt.tabstop = 4 -- number of visual spaces per TAB
vim.opt.shiftwidth = 4 -- size of an indent
vim.opt.expandtab = true -- use spaces instead of tabs
vim.opt.softtabstop = 4
vim.opt.termguicolors = true -- enable 24-bit RGB colors
vim.opt.relativenumber = true -- show line numbers
vim.opt.cursorline = true -- highlight current line
vim.opt.cursorlineopt = "number" -- highlight current line number
vim.filetype.add({ extension = { md = 'markdown' } }) -- set markdown filetype
vim.g.have_nerd_font = true -- set nerd font to true
vim.g.netrw_keepdir = 0 -- tracks the current working directory nvim vs netrw , important for telescope intutive file search
vim.opt.ignorecase = true -- ignore case when searching
vim.opt.smartcase = true -- ignore case if search pattern is all lowercase
vim.opt.splitright = true -- split right
vim.opt.splitbelow = true -- split below
vim.opt.list = true -- show listchars
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' } -- set listchars
vim.opt.scrolloff = 10 -- set minimum number of screen lines to keep above and below the cursorline

vim.g.clipboard = {
    name = 'WslClipboard',
    copy = {
        ["+"] = 'clip.exe',
        ["*"] = 'clip.exe',
    },
    paste = {
        ["+"] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
        ["*"] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
    },
    cache_enabled = 0,
}

-- Highlight when yanking (copying) text

--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when yanking (copying) text',
    group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})
