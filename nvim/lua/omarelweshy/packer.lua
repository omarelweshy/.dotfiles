vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function()
    use("wbthomason/packer.nvim")
    -- telescope 
    use("nvim-lua/plenary.nvim")
    use("nvim-lua/popup.nvim")
    use("nvim-telescope/telescope.nvim")
    use("BurntSushi/ripgrep")

    -- lSP blabla
    use("neovim/nvim-lspconfig")
    use("hrsh7th/cmp-nvim-lsp")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/nvim-cmp")
    use("tzachar/cmp-tabnine", { run = "./install.sh" })
    use("onsails/lspkind-nvim")
    use("nvim-lua/lsp_extensions.nvim")
    use("glepnir/lspsaga.nvim")
    use("simrat39/symbols-outline.nvim")
    use("L3MON4D3/LuaSnip")
    use("saadparwaiz1/cmp_luasnip")
    use("williamboman/nvim-lsp-installer")
    
    -- Colorschema
    use("gruvbox-community/gruvbox")
    use("folke/tokyonight.nvim")
    use("nvim-treesitter/nvim-treesitter", {
        run = ":TSUpdate"
    })
    use("norcalli/nvim-colorizer.lua")
    use("p00f/nvim-ts-rainbow")
    use("folke/lsp-colors.nvim")
    -- git
    use("airblade/vim-gitgutter")
    -- rust
    use("rust-lang/rust.vim")

    -- luaLine
    use("hoob3rt/lualine.nvim")
    use("kyazdani42/nvim-web-devicons")
    use("ryanoasis/vim-devicons")
    
    -- autopair
    use("windwp/nvim-autopairs")

    -- java
 --   use 'mfussenegger/nvim-jdtls'
    -- prettier
    use("prettier/vim-prettier", {
        run = "yarn install --frozen-lockfile --production";
        ft= {'javascript', 'typescript', 'typescriptreact' ,'css', 'less', 'scss', 'json', 'graphql', 'svelte', 'yaml', 'html', "rust", "lua"}
    })
end )

