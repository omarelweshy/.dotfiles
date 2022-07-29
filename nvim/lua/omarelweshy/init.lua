require("omarelweshy.set");
require("omarelweshy.packer");
require("omarelweshy.colors");
require("omarelweshy.telescope");
require("omarelweshy.cmp");
require("omarelweshy.lspconfig");
require("omarelweshy.keymaps");

local augroup = vim.api.nvim_create_augroup
ThePrimeagenGroup = augroup('omarelweshy', {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

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
