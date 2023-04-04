require("omarelweshy.set");
require("omarelweshy.packer");
require("omarelweshy.colors");
require("omarelweshy.telescope");
require("omarelweshy.cmp");
require("omarelweshy.lspconfig");
require("omarelweshy.keymaps");
require("omarelweshy.comments")

local augroup = vim.api.nvim_create_augroup
omarelweshyGroup = augroup('omarelweshy', {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})
require("nvim-autopairs").setup {} 
autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 50,
        })
    end,
})

vim.cmd([[
augroup black_on_save
  autocmd!
  autocmd BufWritePre *.py Black
augroup end

]])

autocmd('BufWritePre', {
    pattern = 'python',
    command = 'Black',
})
