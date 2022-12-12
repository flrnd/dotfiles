require("settings")
require("plugins")

vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.formatting_sync()]]

-- vim.g.tokyonight_style = "day"
vim.cmd [[colorscheme tokyonight]]

require('lualine').setup {
	options = {
		theme = 'tokyonight'
	}
}

-- fzf-lua
vim.api.nvim_set_keymap('n', '<c-P>',
	"<cmd>lua require('fzf-lua').files()<CR>",
	{ noremap = true, silent = true })
