set termguicolors
call plug#begin('~/.config/nvim/plugged')
" Gruvbox Theme
Plug 'morhetz/gruvbox'
Plug 'folke/lsp-colors.nvim'
" lualine
Plug 'hoob3rt/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'
" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  
Plug 'ThePrimeagen/git-worktree.nvim'
Plug 'jiangmiao/auto-pairs'
Plug 'simrat39/symbols-outline.nvim'
"lsp
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'williamboman/nvim-lsp-installer'
Plug 'mfussenegger/nvim-jdtls'
Plug 'glepnir/lspsaga.nvim'
" For vsnip users.
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'prettier/vim-prettier', { 'do': 'npm install', 'for': ['javascript', 'typescript', 'typescriptreact', 'vim' , 'lua', 'javascriptreact', 'rust', 'css', 'less', 'scss', 'json', 'graphql'] }
Plug 'christoomey/vim-tmux-navigator'
" solidity highlighter
Plug 'tomlion/vim-solidity'
" TS Syntax && colorizer && parentheses
Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
Plug 'norcalli/nvim-colorizer.lua'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} 
Plug 'nvim-treesitter/playground' 
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'
"Git
Plug 'airblade/vim-gitgutter'
call plug#end()

" Prettier
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
let g:prettier#config#semi = 'false'

" NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

let mapleader = " "
nnoremap <Leader><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <leader>x :silent !chmod +x %<CR>
inoremap <C-c> <esc>

augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 80})
augroup END
lua require("omarelweshy")
" nnoremap <C-A> ggVG
