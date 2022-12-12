local M = {}

function M.setup()
	local treesitter = require "nvim-treesitter.configs"

	treesitter.setup {
		-- A list of parser names, or "all"
		ensure_installed = { "c", "lua", "rust", "typescript", "go" },

		-- Install parsers synchronously (only applied to `ensure_installed`)
		sync_install = false,

		-- Automatically install missing parsers when entering buffer
		auto_install = true,
	}
end

return M
