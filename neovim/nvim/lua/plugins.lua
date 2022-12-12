require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'folke/tokyonight.nvim'
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}
	use {
		'nvim-treesitter/nvim-treesitter',
		run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
	}
	use {
		"williamboman/nvim-lsp-installer",
		"neovim/nvim-lspconfig",
	}
	use 'nvim-tree/nvim-web-devicons'
	use { 'ibhagwan/fzf-lua',
		-- optional for icon support
		requires = { 'nvim-tree/nvim-web-devicons' }
	}
end)


require 'nvim-treesitter.configs'.setup {
	-- A list of parser names, or "all"
	ensure_installed = { "c", "lua", "rust", "typescript", "go" },

	-- Install parsers synchronously (only applied to `ensure_installed`)
	sync_install = false,

	-- Automatically install missing parsers when entering buffer
	auto_install = true,

}

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
