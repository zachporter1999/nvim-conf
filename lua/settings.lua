--[[
-- settings.lua
-- by: Zach Porter
--
-- This file contains the generic nvim settings.
--]]

-- require'lualine'.setup()

-- ====================
-- Colorscheme
-- ====================
vim.o.termguicolors = true
vim.cmd [[silent! colorscheme onedark]]
vim.g.airline_theme='onedark'

-- vim.g.material_style = "darker"

-- ====================
-- line numbers
-- ====================
vim.cmd [[silent! set nu]]

-- ====================
-- KeyMappings
-- ====================
vim.g.mapleader = ' '

vim.api.nvim_set_keymap('n', "<leader>n",  ":enew | edit ", {noremap = true})
vim.api.nvim_set_keymap('n', "<leader>e",  ":!pandoc -o ",  {noremap = true})
vim.api.nvim_set_keymap('t', "<esc><esc>", "<C-\\><C-n>",   {noremap = true})
vim.api.nvim_set_keymap('n', "<leader>cd", ":cd %:p:h<cr>", {noremap = true})
