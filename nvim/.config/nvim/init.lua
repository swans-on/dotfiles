-- Jason's neovim config

-- Plugins
--require("autoclose").setup()

-- Enable line numbers
vim.opt.number = true

-- Set indentation options
vim.opt.tabstop = 4     -- Number of spaces a <Tab> represents
vim.opt.shiftwidth = 4  -- Number of spaces to use for autoindenting
vim.opt.expandtab = true -- Use spaces instead of tabs
vim.opt.autoindent = true -- Enable autoindenting
vim.opt.smartindent = true -- Enable smartindenting

-- Enable syntax highlighting
vim.cmd("syntax on")
