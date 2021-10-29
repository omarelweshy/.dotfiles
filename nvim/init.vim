" Ignore files
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=**/node_modules/*
set wildignore+=**/.git/*

call plug#begin('~/.config/nvim/plugged')
" Gruvbox Theme
Plug 'morhetz/gruvbox'
" NERDTree plugins
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'
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
"lsp & cmp
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'williamboman/nvim-lsp-installer'

Plug 'prettier/vim-prettier', { 'do': 'npm install', 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql'] }
Plug 'tmsvg/pear-tree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'airblade/vim-gitgutter'

" TS Syntax && colorizer && parentheses
Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
Plug 'norcalli/nvim-colorizer.lua'
Plug 'junegunn/rainbow_parentheses.vim'

call plug#end()
      
if (has("termguicolors"))
 set termguicolors
endif

set background=dark
let g:gruvbox_contrast_dark='hard'
let g:gruvbox_invert_selection='0'
colorscheme gruvbox

" Lightline and colorizer {()}
lua require'lualine'.setup{options={theme='powerline'}}

lua require'plug-colorizer'
let g:rainbow#max_level = 16
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]
 
autocmd FileType * RainbowParentheses

" Prettier
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
let g:prettier#config#semi = 'false'

" NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
"nnoremap <C-f> :NERDTreeFind<CR>
" Start NERDTree and put the cursor back in the other window.
"autocmd VimEnter * NERDTree | wincmd p

" Select all
nnoremap <C-A> ggVG
" ESC with CTRL-C
inoremap <C-c> <esc>
" Zoom
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

