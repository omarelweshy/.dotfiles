local Remap = require("omarelweshy.keymaps")
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local inoremap = Remap.inoremap
local xnoremap = Remap.xnoremap
local nmap = Remap.nmap

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Normal --
-- Better window navigation
nnoremap("<C-h>", "<C-w>h")
nnoremap("<C-j>", "<C-w>j")
nnoremap("<C-k>", "<C-w>k")
nnoremap("<C-l>", "<C-w>l")

nnoremap("<leader>w", ":w<cr>")
nnoremap("<leader>q", ":q<cr>")
nnoremap("<leader>e", ":wq<cr>")
nnoremap("<C-j>", "<C-d>zz")
nnoremap("<C-k>", "<C-u>zz")
nnoremap("n", "nzzzv")
nnoremap("N", "Nzzzv")

-- Microsoft office ???!
inoremap("<C-s>", "<C-c>:w<cr>")
nnoremap("<C-s>", "<C-c>:w<cr>")

-- For global replace
nnoremap("gR", "gD:%s/<C-R>///gc<left><left><left>")
-- For local replace
nnoremap("gr",  "gd[{V%::s/<C-R>///gc<left><left><left>")

-- LSP
nnoremap("gd", vim.lsp.buf.definition)

-- Move lines up and down
vnoremap("J", ":m '>+1<CR>gv=gv")
vnoremap("K", ":m '<-2<CR>gv=gv")

-- Delete and keep copied buffer
xnoremap("<leader>p", "\"_dP")

-- NERDTree
nnoremap("<leader>n", ":NERDTreeFocus<CR>")
nnoremap ("<C-n>", ":NERDTree<CR>")
nnoremap("<C-t>", ":NERDTreeToggle<CR>")
nnoremap ("<C-f>", ":NERDTreeFind<CR>")

