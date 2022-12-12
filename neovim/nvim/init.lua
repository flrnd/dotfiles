require "settings"
require "config.whichkey"
require "utils.finder"
require("plugins").setup()

vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.formatting_sync()]]

-- vim.g.tokyonight_style = "day"
vim.cmd [[colorscheme tokyonight]]

-- lsp-installer

require("nvim-lsp-installer").setup {
	automatic_installation = true
}

local lspconfig = require("lspconfig")

lspconfig.sumneko_lua.setup {
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" }
			}
		}
	}
}

lspconfig.rust_analyzer.setup {}
lspconfig.tsserver.setup {}
lspconfig.gopls.setup {}
