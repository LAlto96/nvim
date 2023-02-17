local cmd = vim.cmd
local fn = vim.fn
local g = vim.g
local opt = vim.opt

require 'plugin'

-- disable netrw at the very start of your init.lua (strongly advised)
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

-- Show Line Number
opt.number = true

-- set termguicolors to enable highlight groups
--vim.opt.termguicolors = true
g.vimtex_view_method = 'zathura'
-- empty setup using defaults
require("nvim-tree").setup()
vim.api.nvim_set_keymap('n', '<F4>', ':NvimTreeToggle<CR>', {noremap = true, silent = true})
-- Enable COQ at start
g.coq_settings = {
  auto_start = true,
}
