-- Install packer
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

require("packer").startup(function(use)
  -- Package manager
  use "wbthomason/packer.nvim"

  use { -- LSP Configuration & Plugins
    "neovim/nvim-lspconfig",
    requires = {
      -- Automatically install LSPs to stdpath for neovim
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",

      -- Useful status updates for LSP
      --"j-hui/fidget.nvim",
    },
  }

  --Useful status updates for LSP
  use {
  'j-hui/fidget.nvim',
  tag = 'legacy',
  config = function()
    require("fidget").setup {}
  end,
  }
  
  use {
    "jose-elias-alvarez/null-ls.nvim",

    config = function()
      require("null-ls").setup()
    end,

    requires = { "nvim-lua/plenary.nvim" }
  }

  use "MunifTanjim/prettier.nvim"

  use { -- Autocompletion
    "hrsh7th/nvim-cmp",
    requires = {
      "hrsh7th/cmp-nvim-lsp",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
      "onsails/lspkind.nvim"
    },
  }

  use { -- Highlight, edit, and navigate code
    "nvim-treesitter/nvim-treesitter",
    run = function()
      pcall(require("nvim-treesitter.install").update { with_sync = true })
    end,
  }

  use { -- Additional text objects via treesitter
    "nvim-treesitter/nvim-treesitter-textobjects",
    after = "nvim-treesitter",
  }

  use { --Autotag
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  }

  use { -- Autopairs
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup()
    end
  }

  -- copilot
  use {
    "zbirenbaum/copilot.lua",
    config = function()
      require("copilot").setup({
        panel = {
          enabled = true,
          auto_refresh = false,
          keymap = {
            jump_prev = "[[",
            jump_next = "]]",
            accept = "<CR>",
            refresh = "<M-g>",
            open = "<M-CR>"
          },
        },
        layout = {
          position = "bottom", -- | top | left | right
          ratio = 0.4
        },
        suggestion = {
          enabled = true,
          auto_trigger = true,
          keymap = {
            accept = "<M-j>",
            accept_line = "<M-l>",
            accept_word = "<M-k>",
            next = "<M-]>",
            prev = "<M-[>",
            dismiss = "<M-c>",
          },
        }
      })
    end
  }

  use {        -- nvim-surround
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
      require("nvim-surround").setup()
    end
  }

  -- barbecue
  -- VSCode like topbar
  use {
    "utilyre/barbecue.nvim",
    tag = "*",
    requires = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons", -- optional dependency
    },
    after = "nvim-web-devicons",     -- keep this if you're using NvChad
    config = function()
      require("barbecue").setup({
        theme = "tokyonight",
      })
    end,
  }

  -- Go-tests
  use "buoto/gotests-vim"

  -- Git related plugins
  use "tpope/vim-fugitive"
  use "tpope/vim-rhubarb"
  use "lewis6991/gitsigns.nvim"

  use "folke/tokyonight.nvim"               -- Colorscheme
  -- use 'navarasu/onedark.nvim'
  use "nvim-lualine/lualine.nvim"           -- Fancier statusline
  use "lukas-reineke/indent-blankline.nvim" -- Add indentation guides even on blank lines
  use "numToStr/Comment.nvim"               -- "gc" to comment visual regions/lines
  use "tpope/vim-sleuth"                    -- Detect tabstop and shiftwidth automatically

  -- Fuzzy Finder (files, lsp, etc)
  use "nvim-lua/plenary.nvim"
  use "junegunn/fzf"
  use {
    "ibhagwan/fzf-lua",
    -- optional for icon support
    requires = { "nvim-tree/nvim-web-devicons" }
  }
  use {
    "gfanto/fzf-lsp.nvim",
    config = function()
      require("fzf_lsp").setup()
    end,
  }

  use "prisma/vim-prisma" -- Prisma syntax highlighting

  -- Add custom plugins to packer from /nvim/lua/custom/plugins.lua
  local has_plugins, plugins = pcall(require, "custom.plugins")
  if has_plugins then
    plugins(use)
  end

  if is_bootstrap then
    require("packer").sync()
  end
end)

-- When we are bootstrapping a configuration, it doesn't
-- make sense to execute the rest of the init.lua.
--
-- You'll need to restart nvim, and then it will work.
if is_bootstrap then
  print "=================================="
  print "    Plugins are being installed"
  print "    Wait until Packer completes,"
  print "       then restart nvim"
  print "=================================="
  return
end

-- Automatically source and re-compile packer whenever you save this init.lua
local packer_group = vim.api.nvim_create_augroup("Packer", { clear = true })
vim.api.nvim_create_autocmd("BufWritePost", {
  command = "source <afile> | PackerCompile",
  group = packer_group,
  pattern = vim.fn.expand "$MYVIMRC",
})

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

-- Set colorscheme
vim.o.termguicolors = true
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

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = "*",
})

-- setup colorscheme
require("tokyonight").setup {
  style = "moon",
}
require("tokyonight").load()

-- Set lualine as statusline
-- See `:help lualine.txt`
require("lualine").setup {
  options = {
    theme = "tokyonight",
  },
}

-- Enable Comment.nvim
require("Comment").setup()

-- Enable `lukas-reineke/indent-blankline.nvim`
-- See `:help ibl.config`
require("ibl").setup {
  indent = {char = "┊"},
}

-- Gitsigns
-- See `:help gitsigns.txt`
require("gitsigns").setup {
  signs = {
    add = { text = "+" },
    change = { text = "~" },
    delete = { text = "_" },
    topdelete = { text = "‾" },
    changedelete = { text = "~" },
  },
}

-- [[ Configure Treesitter ]]
-- See `:help nvim-treesitter`
require("nvim-treesitter.configs").setup {
  -- Add languages to be installed here that you want installed for treesitter
  ensure_installed = { "c", "go", "lua", "rust", "typescript", "graphql", "css", "fish" },

  autotag = {
    enable = true,
  },
  highlight = { enable = true },
  indent = { enable = true },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "<c-space>",
      node_incremental = "<c-space>",
      scope_incremental = "<c-s>",
      node_decremental = "<c-backspace>",
    },
  },
  textobjects = {
    select = {
      enable = true,
      lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
      keymaps = {
        -- You can use the capture groups defined in textobjects.scm
        ["aa"] = "@parameter.outer",
        ["ia"] = "@parameter.inner",
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@class.outer",
        ["ic"] = "@class.inner",
      },
    },
    move = {
      enable = true,
      set_jumps = true, -- whether to set jumps in the jumplist
      goto_next_start = {
        ["]m"] = "@function.outer",
        ["]]"] = "@class.outer",
      },
      goto_next_end = {
        ["]M"] = "@function.outer",
        ["]["] = "@class.outer",
      },
      goto_previous_start = {
        ["[m"] = "@function.outer",
        ["[["] = "@class.outer",
      },
      goto_previous_end = {
        ["[M"] = "@function.outer",
        ["[]"] = "@class.outer",
      },
    },
    swap = {
      enable = true,
      swap_next = {
        ["<leader>a"] = "@parameter.inner",
      },
      swap_previous = {
        ["<leader>A"] = "@parameter.inner",
      },
    },
  },
}

-- Diagnostic keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float)
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist)

-- File fuzzy find etc
vim.api.nvim_set_keymap("n", "<leader>ff",
  "<cmd>lua require('fzf-lua').files()<CR>"
  ,
  { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>fb",
  "<cmd>lua require('fzf-lua').buffers()<CR>",
  { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>fg",
  "<cmd>lua require('fzf-lua').live_grep()<CR>",
  { noremap = true, silent = true })

-- null-ls
local null_ls = require("null-ls")
local group = vim.api.nvim_create_augroup("lsp_format_on_save", { clear = false })
local event = "BufWritePre" -- or "BufWritePost"

null_ls.setup({
  sources = {
    null_ls.builtins.formatting.prettierd,
    null_ls.builtins.diagnostics.eslint.with({
      diagnostics_format = "[eslint] #{m}\n(#{c})"
    }),
    null_ls.builtins.formatting.beautysh,
    null_ls.builtins.formatting.mix,
    null_ls.builtins.formatting.rustfmt,
    null_ls.builtins.formatting.gofmt,
    null_ls.builtins.formatting.goimports,
  },
  on_attach = function(client, bufnr)
    if client.supports_method("textDocument/formatting") then
      vim.keymap.set("n", "<Leader>f", function()
        vim.lsp.buf.format({ bufnr = vim.api.nvim_get_current_buf() })
      end, { buffer = bufnr, desc = "[lsp] format" })
    end

    if client.supports_method("textDocument/formatting") then
      vim.keymap.set("x", "<Leader>f", function()
        vim.lsp.buf.format({ bufnr = vim.api.nvim_get_current_buf() })
      end, { buffer = bufnr, desc = "[lsp] format" })

      -- format on save
      vim.api.nvim_clear_autocmds({ buffer = bufnr, group = group })
      vim.api.nvim_create_autocmd(event, {
        buffer = bufnr,
        group = group,
        callback = function()
          vim.lsp.buf.format({ bufnr = bufnr })
        end,
        desc = "[lsp] format on save",
      })
    end
  end,
})

-- Prettier
local prettier = require("prettier")

prettier.setup({
  bin = "prettierd", -- or `'prettierd'` (v'.22+)
  filetypes = {
    "css",
    "graphql",
    "html",
    "javascript",
    "javascriptreact",
    "json",
    "less",
    "markdown",
    "scss",
    "typescript",
    "typescriptreact",
    "yaml",
  },
})

-- LSP settings.
--  This function gets run when an LSP connects to a particular buffer.
local on_attach = function(_, bufnr)
  -- NOTE: Remember that lua is a real programming language, and as such it is possible
  -- to define small helper and utility functions so you don't have to repeat yourself
  -- many times.
  --
  -- In this case, we create a function that lets us more easily define mappings specific
  -- for LSP related items. It sets the mode, buffer and description for us each time.
  local nmap = function(keys, func, desc)
    if desc then
      desc = "LSP: " .. desc
    end

    vim.keymap.set("n", keys, func, { buffer = bufnr, desc = desc })
  end

  nmap("<leader>rn", vim.lsp.buf.rename, "[R]e[n]ame")
  nmap("<leader>ca", vim.lsp.buf.code_action, "[C]ode [A]ction")

  nmap("gd", vim.lsp.buf.definition, "[G]oto [D]efinition")
  nmap("gr", vim.lsp.buf.references, "[G]oto [R]eferences")
  nmap("gI", vim.lsp.buf.implementation, "[G]oto [I]mplementation")
  nmap("<leader>D", vim.lsp.buf.type_definition, "Type [D]efinition")

  -- See `:help K` for why this keymap
  nmap("K", vim.lsp.buf.hover, "Hover Documentation")
  nmap("<C-k>", vim.lsp.buf.signature_help, "Signature Documentation")

  -- Lesser used LSP functionality
  nmap("gD", vim.lsp.buf.declaration, "[G]oto [D]eclaration")
  nmap("<leader>wa", vim.lsp.buf.add_workspace_folder, "[W]orkspace [A]dd Folder")
  nmap("<leader>wr", vim.lsp.buf.remove_workspace_folder, "[W]orkspace [R]emove Folder")
  nmap("<leader>wl", function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, "[W]orkspace [L]ist Folders")

  -- Create a command `:Format` local to the LSP buffer
  vim.api.nvim_buf_create_user_command(bufnr, "Format", function(_)
    if vim.lsp.buf.format then
      vim.lsp.buf.format()
    elseif vim.lsp.buf.formatting then
      vim.lsp.buf.formatting()
    end
  end, { desc = "Format current buffer with LSP" })
end

-- Setup mason so it can manage external tooling
require("mason").setup()

-- Enable the following language servers
-- Feel free to add/remove any LSPs that you want here. They will automatically be installed
local servers = {
  "tsserver",
  "lua_ls",
  "gopls",
  "cssls",
  "tailwindcss",
  "graphql"
}

-- Ensure the servers above are installed
require("mason-lspconfig").setup {
  ensure_installed = servers,
}

-- nvim-cmp supports additional completion capabilities
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

for _, lsp in ipairs(servers) do
  require("lspconfig")[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end


-- Make runtime files discoverable to the server
local runtime_path = vim.split(package.path, ";")
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

require('lspconfig').lua_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' },
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = { enable = false },
    },
  },
}

-- tsserver config

local function organize_imports(bufnr)
  local params = {
    command = "_typescript.organizeImports",
    arguments = { vim.api.nvim_buf_get_name(0) },
    title = ""
  }
  vim.lsp.buf_request_sync(bufnr, "workspace/executeCommand", params, 500)
end

require('lspconfig').tsserver.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {
    "typescript",
    "typescriptreact",
    "typescript.tsx",
    "javascript",
    "javascriptreact",
    "javascript.jsx"
  },
  commands = {
    OrganizeImports = {
      organize_imports,
      description = "Organize Imports"
    }
  }
}

-- nvim-cmp setup
local cmp = require "cmp"
local luasnip = require "luasnip"
local lspkind = require "lspkind"

cmp.setup {
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  formatting = {
    format = lspkind.cmp_format({
      mode = "symbol",
      max_width = 50,
    })
  },
  mapping = cmp.mapping.preset.insert {
    ["<C-d>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<CR>"] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },
    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end, { "i", "s" }),
    ["<S-Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { "i", "s" }),
  },
  sources = {
    { name = "nvim_lsp" },
    { name = "luasnip" },
  },
}

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
