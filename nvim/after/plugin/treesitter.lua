require'nvim-treesitter.configs'.setup {
    ensure_installed = "all",
    sync_install = false,

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
    rainbow = {
    enable = false,
    -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
    colors = {"#40B071", "#00903F", "#DAF7A6", "#FFC300", "#FF5733", "#C70039"}, -- table of hex strings
    -- termcolors = {} -- table of colour name strings
  }

}




-- space_char_blankline = " ",
-- show_current_context = true,
-- show_current_context_start = true,

-- require"indent_blankline".setup {
-- }
--
