-- ~/.config/nvim/lua/config/ide.lua

-- ✨ IDE Configuration
local M = {}

function M.setup()
  -- Standard IDE options
  vim.opt.number = true
  vim.opt.relativenumber = true
  vim.opt.signcolumn = "yes"
  vim.opt.wrap = false

  -- Load and configure plugins specific to IDE mode
  require("lspconfig").setup({})
  require("nvimtree").setup({}) -- The plugin is conditionally loaded, so this will work.

  -- IDE Keymaps
  vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle File Explorer" })
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to Definition" })
end

return M
