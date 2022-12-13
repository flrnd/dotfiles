local M = {}

function M.setup()
	local treesitter = require "nvim-treesitter.configs"

	treesitter.setup {
		-- A list of parser names, or "all"
		ensure_installed = { "c", "lua", "rust", "typescript", "go", "erlang", "elixir", "html", "eex", "heex" },

		-- Install parsers synchronously (only applied to `ensure_installed`)
		sync_install = false,

		-- Automatically install missing parsers when entering buffer
		auto_install = true,

		-- enable syntax highlight
		highlight = { enable = true },
	}
end

return M
