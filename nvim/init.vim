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
Plug 'rust-lang/rust.vim'
call plug#end()

lua require("omarelweshy")

"=================================================
let mapleader = " "
nnoremap <Leader><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <leader>x :silent !chmod +x %<CR>
inoremap <C-c> <esc>
" Quick-save
nmap <leader>w :w<CR>
" Quick-quit
nmap <leader>q :q<CR>
" No arrow keys --- force yourself to use the home row
nnoremap <up> <nop>
nnoremap <down> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
" Left and right can switch buffers
nnoremap <left> :bp<CR>
nnoremap <right> :bn<CR>
" nnoremap <C-A> ggVG
"===============================================
"RUST
let g:rustfmt_autosave = 1
let g:rustfmt_emit_files = 1
let g:rustfmt_fail_silently = 0
let g:rust_clip_command = 'xclip -selection clipboard'
" Follow Rust code style rules
au Filetype rust source ~/.config/nvim/scripts/spacetab.vim
au Filetype rust set colorcolumn=100
"================================================
" Search
" Ctrl+h to stop searching
vnoremap <leader>h :nohlsearch<cr>
nnoremap <leader>h :nohlsearch<cr>
"================================================
""Jump to last edit position on opening file
if has("autocmd")
  " https://stackoverflow.com/questions/31449496/vim-ignore-specifc-file-in-autocommand
  au BufReadPost * if expand('%:p') !~# '\m/\.git/' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 80})
augroup END
"=================================================
" Prettier
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
let g:prettier#config#semi = 'false'
"=================================================
" NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
"=================================================
