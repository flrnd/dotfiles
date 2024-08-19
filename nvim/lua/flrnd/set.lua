-- [[ Setting options ]]
-- See `:help vim.o`

-- Use spaces instead of tabs :>
vim.o.expandtab = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2

-- Set highlight on search
vim.o.hlsearch = false

-- Make line numbers default
vim.wo.number = true
vim.opt.relativenumber = true

-- Enable mouse mode
vim.o.mouse = "a"

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Decrease update time
vim.o.updatetime = 250
vim.wo.signcolumn = "yes:1"

vim.o.termguicolors = true

-- Set colorscheme
vim.cmd('colorscheme vscode')
--vim.cmd [[colorscheme onedark]]

-- Set completeopt to have a better completion experience
vim.o.completeopt = "menuone,noselect"

-- [[ Basic Keymaps ]]
-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- clipboard
vim.oclipboard = "unnamedplus"

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- listchars
vim.opt.listchars = { eol = '↵', trail = '~' }
vim.opt.list = true
vim.cmd("match ErrorMsg /\\s\\+$/")
