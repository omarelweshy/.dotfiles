-- vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function()
    use("wbthomason/packer.nvim")
    -- telescope 
    use("nvim-lua/plenary.nvim")
    use("nvim-lua/popup.nvim")
    use("nvim-telescope/telescope.nvim")
    use("BurntSushi/ripgrep")
    use("hrsh7th/cmp-nvim-lsp-signature-help")
    use("saadparwaiz1/cmp_luasnip")    -- lSP blabla
    use("neovim/nvim-lspconfig")
    use("hrsh7th/cmp-nvim-lsp")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/nvim-cmp")
    use("tzachar/cmp-tabnine", { run = "./install.sh" })
    use("onsails/lspkind-nvim")
    use("nvim-lua/lsp_extensions.nvim")
    use("glepnir/lspsaga.nvim")
    use("simrat39/symbols-outline.nvim")
    use({"L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*"})
    use("williamboman/nvim-lsp-installer")
    use ("rafamadriz/friendly-snippets")
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
    use("f-person/git-blame.nvim")
    -- rust
    use("rust-lang/rust.vim")
    -- golang
    use("fatih/vim-go",{
        run=":GoUpdateBinaries"
    })
    -- luaLine
    use("hoob3rt/lualine.nvim")
    use("kyazdani42/nvim-web-devicons")
    use("ryanoasis/vim-devicons")

    -- autopair
    use("windwp/nvim-autopairs")
    -- Indent lines
    use ("lukas-reineke/indent-blankline.nvim")
    -- java
    --   use 'mfussenegger/nvim-jdtls'
    -- prettier
    use("prettier/vim-prettier", {
        run = "yarn install --frozen-lockfile --production";
        ft= {'javascript', 'typescript', 'typescriptreact' ,'css', 'less', 'scss', 'json', 'graphql', 'svelte', 'yaml', 'html', "rust", "lua"}
    })

    -- Commenting
    use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
}
    -- File explorer
    use("preservim/nerdtree")
    -- Python Formatter
    use("psf/black")
    use("ThePrimeagen/harpoon")
    -- function paramerters
    use("ray-x/lsp_signature.nvim")
    -- show current code context
    use("SmiteshP/nvim-navic")
end )

