lua <<EOF
  -- Setup nvim-cmp.
  local cmp = require'cmp'
  local lspconfig = require 'lspconfig'

  cmp.setup({
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
        -- require'snippy'.expand_snippet(args.body) -- For `snippy` users.
      end,
    },
    mapping = {
      ['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
      ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
      ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
      ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
      ['<C-e>'] = cmp.mapping({
        i = cmp.mapping.abort(),
        c = cmp.mapping.close(),
      }),
      ['<CR>'] = cmp.mapping.confirm({ select = true }),
      ['<Tab>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
      ['<S-Tab>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
      ['<Down>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
      ['<Up>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
    },
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'vsnip' }, -- For vsnip users.
      -- { name = 'luasnip' }, -- For luasnip users.
      -- { name = 'ultisnips' }, -- For ultisnips users.
      -- { name = 'snippy' }, -- For snippy users.
    }, {
      { name = 'buffer' },
    })
  })

  -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline('/', {
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })

  -- Setup lspconfig.
  local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
  require('lspconfig')['tsserver'].setup {
    capabilities = capabilities
  }
  require('lspconfig')['pyright'].setup {
    capabilities = capabilities
  }
  require('lspconfig')['gopls'].setup {
    capabilities = capabilities,
  cmd = {"gopls", "serve"},
	settings = {
		gopls = {
			analyses = {
				unusedparams = true,
			},
			staticcheck = true,
			linksInHover = false,
			codelens = {
				generate = true,
				gc_details = true,
				regenerate_cgo = true,
				tidy = true,
				upgrade_depdendency = true,
				vendor = true,
			},
			usePlaceholders = true,
		},
	},
}


  local root_pattern = lspconfig.util.root_pattern
  require('lspconfig')['jdtls'].setup {
    capabilities = capabilities,
    root_dir = root_pattern(".git"),
settings = {
		java = {
			completion = {
				-- Defines the type filters.
				-- All types whose fully qualified name matches the selected filter strings will be ignored in content assist
				-- or quick fix proposals and when organizing imports.
				-- For example 'java.awt.*' will hide all types from the awt packages.
				filteredTypes = {
					"antlr.*",
					"bitronix.*",
					"com.docusign.*",
					"com.lowagi.*",
					"com.sun.*",
					"org.apache.xmlbeans.*"
				},

				-- When set to true, method arguments are guessed when a method is selected from as list of code assist proposals.
				guessMethodArguments = false,
			},

			configuration = {
				-- Controls whether to exclude extension-generated project settings files (.project, .classpath, .factorypath, .settings/)
				-- from the file explorer.
				checkProjectSettingsExclusions = false,
			},

			format = {
				settings = {
					-- Optional formatter profile name from the Eclipse formatter settings.
					profile = "GoogleStyle",

					-- Specifies the url or file path to the Eclipse formatter xml settings.
					url = "https://raw.githubusercontent.com/google/styleguide/gh-pages/eclipse-java-google-style.xml",
				},
			},

			-- Enable/disable the implementations code lens.
			implementationsCodeLens = {
				enabled = false,
			},

			maven = {
				-- Enable/disable download of Maven source artifacts as part of importing Maven projects.
				downloadSources = true,
			},

			-- Enable/disable the references code lens.
			referencesCodeLens = {
				enabled = true,
			},

			-- Automatically show build status on startup.
			showBuildStatusOnStart = {
				enabled = true,
			},

			-- Enable/disable the signature help.
			signatureHelp = {
				enabled = true,
			},
		}
	},
  }
  require('lspconfig')['dockerls'].setup {
    capabilities = capabilities
  }

EOF


