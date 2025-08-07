-- [[ Configure Treesitter ]]
-- See `:help nvim-treesitter`
require("nvim-treesitter.configs").setup({
  -- Add languages to be installed here that you want installed for treesitter
  build = ":TSUpdate",
  dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects",
  },
  ensure_installed = {
    "bash",
    "c",
    "css",
    "dockerfile",
    "elixir",
    "fish",
    "go",
    "graphql",
    "html",
    "html",
    "javascript",
    "json",
    "lua",
    "markdown",
    "rust",
    "typescript",
    "vimdoc",
    "yaml"
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
})
