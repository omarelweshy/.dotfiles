" Ignore files
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=**/node_modules/*
set wildignore+=**/.git/*

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
Plug 'ThePrimeagen/git-worktree.nvim'
Plug 'jiangmiao/auto-pairs'
Plug 'simrat39/symbols-outline.nvim'
"lsp
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'mfussenegger/nvim-jdtls'
Plug 'glepnir/lspsaga.nvim'
Plug 'prettier/vim-prettier', { 'do': 'npm install', 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql'] }
Plug 'christoomey/vim-tmux-navigator'
" solidity highlighter
Plug 'tomlion/vim-solidity'
" TS Syntax && colorizer && parentheses
Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
Plug 'norcalli/nvim-colorizer.lua'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'
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

" nnoremap <C-A> ggVG
