require "settings"
require("plugins").setup()

vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.formatting_sync()]]

-- vim.g.tokyonight_style = "day"
vim.cmd [[colorscheme tokyonight]]
