vim.g.omarelweshy_colorscheme = "gruvbox"

require'colorizer'.setup()
require("lsp-colors").setup({
  Error = "#db4b4b",
  Warning = "#e0af68",
  Information = "#0db9d7",
  Hint = "#10B981"
})
require'lualine'.setup{options={theme='powerline'}}

--autocmd FileType * RainbowParentheses
function ColorMyPencils()
    vim.g.gruvbox_contrast_dark = 'hard'
    vim.g.tokyonight_transparent_sidebar = true
    vim.g.tokyonight_transparent = true
    vim.g.gruvbox_invert_selection = '0'
    vim.opt.background = "dark"

    vim.cmd("colorscheme " .. vim.g.omarelweshy_colorscheme)

    local hl = function(thing, opts)
        vim.api.nvim_set_hl(0, thing, opts)
    end

    hl("ColorColumn", {
        ctermbg = 0,
        bg = "#2B79A0",
    })


end
ColorMyPencils()
