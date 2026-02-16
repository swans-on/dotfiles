-- ~/.config/nvim/lua/config/scratch.lua

-- 🌙 Scratch Pad Configuration
local M = {}

function M.setup()
  -- Disable unnecessary UI elements
  vim.opt.number = false  -- No line numbers
  vim.opt.relativenumber = false
  vim.opt.signcolumn = "no" -- Hide the sign column
  vim.opt.wrap = true       -- Wrap text for long notes

  -- Minimal Keymaps
  vim.keymap.set("n", "<leader>s", ":w<CR>", { desc = "Save" })
  vim.keymap.set("n", "<leader>q", ":q<CR>", { desc = "Quit" })
end

return M
