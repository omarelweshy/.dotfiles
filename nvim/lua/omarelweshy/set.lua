vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.errorbells = false

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

-- Give more space for displaying messages.
vim.opt.cmdheight = 1

-- Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
-- delays and poor user experience.
vim.opt.updatetime = 50

-- Don't pass messages to |ins-completion-menu|.
vim.opt.shortmess:append("c")

vim.opt.colorcolumn = "110"
vim.g.mapleader = " "
vim.g["prettier#autoformat"] = 1
vim.g["prettier#autoformat_require_pragma"] = 0
vim.g["prettier#config#semi"]= false
vim.opt.mouse=""
vim.g.ttymouse=""

-- git commit line
vim.g["gitblame_date_format"] = '%r'
vim.g["gitblame_virtual_text_column"] = 80

--RUST
vim.g["rustfmt_autosave"] = 1
vim.g["rustfmt_emit_files"] = 1
vim.g["rustfmt_fail_silently"] = 0

-- Golang
--vim.g["go_bin_path"] = "/usr/local/go"
vim.opt.wildignore = {'**/node_modules/*', '**/.git/*', '*.pyc', '*_build/*', '**/migrations/*','**/target/*', '*.next/*'}

-- Indent Lines
vim.opt.list = true
-- vim.opt.listchars:append "space:⋅"
-- vim.opt.listchars:append "eol:↴"

