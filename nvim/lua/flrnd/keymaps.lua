-- Diagnostic keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float)
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist)

-- require fzf-lua
vim.api.nvim_set_keymap("n", "<leader>ff", "<cmd>lua require('fzf-lua').files()<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap(
  "n",
  "<leader>fb",
  "<cmd>lua require('fzf-lua').buffers()<CR>",
  { noremap = true, silent = true }
)

vim.api.nvim_set_keymap(
  "n",
  "<leader>fg",
  "<cmd>lua require('fzf-lua').live_grep()<CR>",
  { noremap = true, silent = true }
)

vim.api.nvim_set_keymap("n", "<leader>fd", "<cmd>lua require('fzf-lua').lsp_definitions()<CR>",
  { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<leader>fi", "<cmd>lua require('fzf-lua').lsp_implementations()<CR>",
  { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<leader>fr", "<cmd>lua require('fzf-lua').lsp_references()<CR>",
  { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<leader>ft", "<cmd>lua require('fzf-lua').lsp_typedefs()<CR>",
  { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<leader>fs", "<cmd>lua require('fzf-lua').lsp_document_symbols()<CR>",
  { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<leader>fw", "<cmd>lua require('fzf-lua').lsp_workspace_symbols()<CR>",
  { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<leader>fws", "<cmd>lua require('fzf-lua').lsp_live_orkspace_symbols()<CR>",
  { noremap = true, silent = true })
