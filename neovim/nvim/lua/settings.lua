vim.opt.textwidth = 100
vim.opt.signcolumn = "yes"
-- vim.opt.colorcolumn = "100"
vim.opt.relativenumber = true
vim.opt.ruler = true
vim.opt.number = true
vim.opt.wrap = false

vim.opt.termguicolors = true

vim.g.mapleader = ","

-- prevent typo when pressing `wq` or `q`
vim.cmd [[
cnoreabbrev <expr> W ((getcmdtype() is# ':' && getcmdline() is# 'W')?('w'):('W'))
cnoreabbrev <expr> Q ((getcmdtype() is# ':' && getcmdline() is# 'Q')?('q'):('Q'))
cnoreabbrev <expr> WQ ((getcmdtype() is# ':' && getcmdline() is# 'WQ')?('wq'):('WQ'))
cnoreabbrev <expr> Wq ((getcmdtype() is# ':' && getcmdline() is# 'Wq')?('wq'):('Wq'))
]]


