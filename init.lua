--Map leaders
vim.g.mapleader=' '

vim.g.maplocalleader=' '

vim.opt.termguicolors = true


-- This is for 
-- local path = os.getenv("PWD") .. "/lua"

-- local core = path .. "/core"
-- local plugins = path .. "/plugins"
-- local  misc = path .. "/misc"











--Gloabl aliases
require ("helpers/globals")

--Keybinding functions
require ('helpers/keyboard')

-- General settings
require ("settings/general")

-- Bootsraping plugin manager
require ("lazy-bootstrap")

-- Plugin management 
require("lazy").setup({
  require("plugins-nvim"),
  require("plugins-vim")
})

-- Keybindings
require ("settings/keybindings")

-- vim:tabstop=2 shiftwidth=2 expandtab syntax=lua foldmethod=marker foldlevelstart=0 foldlevel=0
