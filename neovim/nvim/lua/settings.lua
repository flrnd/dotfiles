local api = vim.api
local g = vim.g
local opt = vim.opt

opt.textwidth = 120
opt.signcolumn = "yes"
-- vim.opt.colorcolumn = "100"
opt.relativenumber = true
opt.ruler = true
opt.number = true
opt.wrap = false
opt.clipboard = "unnamedplus"
opt.termguicolors = true
opt.smartindent = true --Smart indent
opt.autoindent = true
opt.shiftwidth = 2
opt.tabstop = 2
-- Remap leader and local leader to <Space>
api.nvim_set_keymap("", "<Space>", "<Nop>", { noremap = true, silent = true })
g.mapleader = " "
g.maplocalleader = " "

-- prevent typo when pressing `wq` or `q`
vim.cmd [[
cnoreabbrev <expr> W ((getcmdtype() is# ':' && getcmdline() is# 'W')?('w'):('W'))
cnoreabbrev <expr> Q ((getcmdtype() is# ':' && getcmdline() is# 'Q')?('q'):('Q'))
cnoreabbrev <expr> WQ ((getcmdtype() is# ':' && getcmdline() is# 'WQ')?('wq'):('WQ'))
cnoreabbrev <expr> Wq ((getcmdtype() is# ':' && getcmdline() is# 'Wq')?('wq'):('Wq'))
]]

-- ignore node_modules and .git
opt.wildignorecase = true
opt.wildignore:append "**/node_modules/*"
opt.wildignore:append "**/.git/*"
