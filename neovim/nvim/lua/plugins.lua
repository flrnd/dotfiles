local M = {}

function M.setup()
	-- Indicate first time installation
	local packer_bootstrap = false

	-- packer.nvim configuration
	local conf = {
		profile = {
			enable = true,
			threshold = 0, -- the amount in ms that a plugins load time must be over for it to be included in the profile
		},

		display = {
			open_fn = function()
				return require("packer.util").float { border = "rounded" }
			end,
		},
	}

	-- Check if packer.nvim is installed
	-- Run PackerCompile if there are changes in this file
	local function packer_init()
		local fn = vim.fn
		local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
		if fn.empty(fn.glob(install_path)) > 0 then
			packer_bootstrap = fn.system {
				"git",
				"clone",
				"--depth",
				"1",
				"https://github.com/wbthomason/packer.nvim",
				install_path,
			}
			vim.cmd [[packadd packer.nvim]]
		end

		-- Run PackerCompile if there are changes in this file
		-- vim.cmd "autocmd BufWritePost plugins.lua source <afile> | PackerCompile"
		local packer_grp = vim.api.nvim_create_augroup("packer_user_config", { clear = true })
		vim.api.nvim_create_autocmd(
			{ "BufWritePost" },
			{ pattern = "init.lua", command = "source <afile> | PackerCompile", group = packer_grp }
		)
	end

	-- Plugins
	local function plugins(use)
		use { "wbthomason/packer.nvim" }

		-- Load only when require
		use { "nvim-lua/plenary.nvim", module = "plenary" }

		-- colorscheme
		use 'folke/tokyonight.nvim'

		-- lualine
		use {
			'nvim-lualine/lualine.nvim',
			requires = { 'kyazdani42/nvim-web-devicons', opt = true },
			config = function()
				require('lualine').setup {
					options = {
						theme = 'tokyonight'
					}
				}
			end,
		}

		use {
			'lewis6991/gitsigns.nvim',
			-- tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
		}

		-- WhichKey
		use {
			"folke/which-key.nvim",
			event = "VimEnter",
			module = { "which-key" },
			-- keys = { [[<leader>]] },
			config = function()
				require("config.whichkey").setup()
			end,
		}

		-- treesitter
		use {
			'nvim-treesitter/nvim-treesitter',
			run = function()
				require('nvim-treesitter.install').update({ with_sync = true })
			end,
			config = function()
				require("config.treesitter").setup()
			end,
		}

		-- LSP
		use {
			"williamboman/nvim-lsp-installer",
			"neovim/nvim-lspconfig",
		}

		-- Surround
		use {
			"kylechui/nvim-surround",
			tag = "*", -- Use for stability; omit to use `main` branch for the latest features
			config = function()
				require("nvim-surround").setup()
			end,
		}

		-- Auto pairs
		use {
			"windwp/nvim-autopairs",
			opt = true,
			event = "InsertEnter",
			module = { "nvim-autopairs.completion.cmp", "nvim-autopairs" },
			config = function()
				require("config.autopairs").setup()
			end,
		}

		-- Completion
		use {
			"hrsh7th/nvim-cmp",
			event = "InsertEnter",
			opt = true,
			requires = {
				"hrsh7th/cmp-buffer",
				"hrsh7th/cmp-path",
				"hrsh7th/cmp-nvim-lua",
				"ray-x/cmp-treesitter",
				"hrsh7th/cmp-cmdline",
				{ "hrsh7th/cmp-nvim-lsp", module = { "cmp_nvim_lsp" } },
				"hrsh7th/cmp-nvim-lsp-signature-help",
				"lukas-reineke/cmp-rg",
				"davidsierradz/cmp-conventionalcommits",
				{ "onsails/lspkind-nvim", module = { "lspkind" } },
				"L3MON4D3/LuaSnip",
				"saadparwaiz1/cmp_luasnip",
			},
			config = function()
				local cmp = require "cmp"

				cmp.setup {
					snippet = {
						-- REQUIRED - you must specify a snippet engine
						expand = function(args)
							--vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
							require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
							-- require('snippy').expand_snippet(args.body) -- For `snippy` users.
							-- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
						end,
					},
					window = {
						-- completion = cmp.config.window.bordered(),
						-- documentation = cmp.config.window.bordered(),
					},
					mapping = cmp.mapping.preset.insert({
						['<C-b>'] = cmp.mapping.scroll_docs(-4),
						['<C-f>'] = cmp.mapping.scroll_docs(4),
						['<C-Space>'] = cmp.mapping.complete(),
						['<C-e>'] = cmp.mapping.abort(),
						['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
						['<Tab>'] = function(fallback)
							if cmp.visible() then
								cmp.select_next_item()
							else
								fallback()
							end
						end
					}),
					sources = cmp.config.sources({
						{ name = 'nvim_lsp' },
						-- { name = 'vsnip' }, -- For vsnip users.
						{ name = 'luasnip' }, -- For luasnip users.
						-- { name = 'ultisnips' }, -- For ultisnips users.
						-- { name = 'snippy' }, -- For snippy users.
					}, {
						{ name = 'buffer' },
					})
				}
			end,
		}
		-- Icons
		use 'nvim-tree/nvim-web-devicons'


		use { 'ibhagwan/fzf-lua',
			-- optional for icon support
			requires = { 'nvim-tree/nvim-web-devicons' }
		}

		-- Bootstrap Neovim
		if packer_bootstrap then
			print "Neovim restart is required after installation!"
			require("packer").sync()
		end
	end

	-- Init and start packer
	packer_init()
	local packer = require "packer"

	packer.init(conf)
	packer.startup(plugins)
end

return M
