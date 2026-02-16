-- ~/.config/nvim/lua/plugins.lua

local plugins = {
  -- Essential Plugins (Load in both modes)
  { "nvim-lua/plenary.nvim", lazy = false },
  { "nvim-tree/nvim-web-devicons", lazy = false },
  { "tpope/vim-surround" }, -- For quick text manipulation

  -- IDE-Specific Plugins (Load only in IDE mode)
  -- 1. File Tree
  {
    "nvim-tree/nvim-tree.lua",
    name = "nvimtree",
    cmd = { "NvimTreeToggle", "NvimTreeOpen" },
    enabled = vim.g.neovim_ide_mode,
    lazy = not vim.g.neovim_ide_mode,
  },

  -- 2. LSP & Autocompletion
  {
    "neovim/nvim-lspconfig",
    name = "lspconfig",
    enabled = vim.g.neovim_ide_mode,
    lazy = not vim.g.neovim_ide_mode,
  },
  {
    "hrsh7th/nvim-cmp",
    name = "cmp",
    enabled = vim.g.neovim_ide_mode,
    lazy = not vim.g.neovim_ide_mode,
  },
  -- ... add more IDE plugins like telescope, debuggers, etc.
}

return require("lazy").setup(plugins, {})
