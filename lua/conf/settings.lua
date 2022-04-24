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
local wk = require("which-key")
wk.register({
	t = {
		name = "Terminal",
		s = {"Open in spit"},
		t = {"Open in new tab"},
		v = {"Open in vertical split"},
	},
	n = {"Open file in new buffer"},
}, { prefix = "<leader>"})


-- ====================
-- Colorscheme
-- ====================
vim.o.termguicolors = false
vim.cmd [[silent! colorscheme torte]]
vim.g.airline_theme='onedark'

-- vim.g.material_style = "darker"

-- ====================
-- line numbers
-- ====================
vim.cmd [[silent! set rnu]]
vim.cmd [[silent! set nu]]

-- ====================
-- KeyMappings
-- ====================
vim.g.mapleader = ' '

vim.api.nvim_set_keymap('n', "<leader>n",  ":enew | edit ", {noremap = true})
-- vim.api.nvim_set_keymap('n', "<leader>e",  ":!pandoc -o ",  {noremap = true})
vim.api.nvim_set_keymap('t', "<esc><esc>", "<C-\\><C-n>",   {noremap = true})
vim.api.nvim_set_keymap('n', "<leader>cd", ":cd %:p:h<cr>", {noremap = true})
vim.api.nvim_set_keymap('n', "<leader><enter>", ":pwd<cr>", {noremap = true})

vim.api.nvim_set_keymap('n', "<leader>tf", ":vsplit | term vifm<cr>i", {noremap = true})
vim.api.nvim_set_keymap('n', "<leader>tv", ":vsplit | term<cr>i", {noremap = true})
vim.api.nvim_set_keymap('n', "<leader>ts", ":split | term<cr><C-w><S-j>10<C-w>-i", {noremap = true})
vim.api.nvim_set_keymap('n', "<leader>tt", ":tabnew | term<cr>i", {noremap = true})
vim.api.nvim_set_keymap('n', "<leader>e", ":NERDTree<cr>", {noremap = true})
