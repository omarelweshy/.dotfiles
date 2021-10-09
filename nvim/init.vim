syntax on
set hidden
set encoding=utf-8
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set scrolloff=8
set smartindent
set nu
set relativenumber
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set signcolumn=yes
set termguicolors
set t_Co=256
set clipboard=unnamedplus
"set mouse=a
set ttyfast
set cursorline
set wildmode=longest,list
set ignorecase
set showmatch
set splitright
set splitbelow

call plug#begin('~/.config/nvim/plugged')

" Gruvbox Theme
Plug 'morhetz/gruvbox'

" NERDTree plugins
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Lualine
Plug 'hoob3rt/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'

" COC 
Plug 'neoclide/coc.nvim'
Plug 'sheerun/vim-polyglot'

" FZF
"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"Plug 'junegunn/fzf.vim'
"Plug 'airblade/vim-rooter'

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
"
"Plug 'tpope/vim-commentary'
Plug 'preservim/nerdcommenter'
Plug 'prettier/vim-prettier', { 'do': 'npm install', 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql'] }
Plug 'tmsvg/pear-tree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'airblade/vim-gitgutter'

" TS Syntax && colorizer && parentheses
Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
Plug 'norcalli/nvim-colorizer.lua'
Plug 'junegunn/rainbow_parentheses.vim'

" golang Plugin
Plug 'fatih/vim-go'
call plug#end()
      
if (has("termguicolors"))
 set termguicolors
endif

set background=dark
let g:gruvbox_contrast_dark='hard'
let g:gruvbox_invert_selection='0'
colorscheme gruvbox
let g:coc_global_extensions = ['coc-emmet', 'coc-snippets', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-python', 'coc-sql', 'coc-java', 'coc-tsserver']

"==============================================
" COC
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
source $HOME/.config/nvim/plug-config/coc.vim
"==============================================
" Lightline and colorizer {()}
"
lua require'lualine'.setup{options={theme='powerline'}}

lua require'plug-colorizer'
let g:rainbow#max_level = 16
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]
 
autocmd FileType * RainbowParentheses

"===============================================
"FZF
"let g:fzf_preview_window = ['right:50%', 'ctrl-/']

let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.9 } }
nnoremap <C-p> :Files<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}
" I should install bat for fzf window preview syntaxhighlighting https://github.com/sharkdp/bat

"==============================================
"Commentary
nnoremap <space>/ :Commentary<CR>
vnoremap <space>/ :Commentary<CR>

"==============================================
" nerdcommenter

vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

"==============================================
" Prettier
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
let g:prettier#config#semi = 'false'

"==============================================
" NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
"nnoremap <C-f> :NERDTreeFind<CR>
" Start NERDTree and put the cursor back in the other window.
"autocmd VimEnter * NERDTree | wincmd p

" Other
" Select all
nnoremap <C-A> ggVG

" ESC with CTRL-C
inoremap <C-c> <esc>

" Zoom
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Telescope
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
