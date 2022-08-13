local nvim_lsp = require'lspconfig'

require('lspconfig').tsserver.setup{}
require('lspconfig').rust_analyzer.setup{}
require('lspconfig').jdtls.setup{
    cmd = {"jdtls"}
}

