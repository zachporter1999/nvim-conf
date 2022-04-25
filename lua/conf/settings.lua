--[[
-- settings.lua
-- by: Zach Porter
--
-- This file contains the generic nvim settings.
--]]

require('conf/helpers')

-- TODO Switch to lualine
-- require'lualine'.setup()

-- ====================
-- Layout
-- ====================
vim.cmd [[ let tabspace = 4 ]]
vim.cmd [[ let shiftwidth = 4 ]]

-- ====================
-- Colorscheme
-- ====================
local wk = require("which-key")
wk.register({
	t = {
		name = "Terminal",
		f = {"Open Vifm"},
		s = {"Open in spit"},
		t = {"Open in new tab"},
		v = {"Open in vertical split"},
	},
	n = {
		name = "Open File",
		b = {"New Buffer (explore)"},
		B = {"New Buffer"},
		s = {"New Split (explore)"},
		S = {"New Split"},
		t = {"New Tab (explore)"},
		T = {"New Tab"},
		v = {"New Vsplit (explore)"},
		V = {"New Vsplit"},
	},
	r = {"Toggle Relative Line Numbers"},
}, { prefix = "<leader>"})

-- ====================
-- Windows Specific
-- ====================
local osType = getOSType()
if (osType == 'win32') then
	vim.cmd 'set shell=powershell'
end

-- ====================
-- Colorscheme
-- ====================
vim.o.termguicolors = false
vim.cmd [[silent! colorscheme torte]]
vim.g.airline_theme='onedark'

-- ====================
-- line numbers
-- ====================
vim.cmd [[silent! set rnu]]
vim.cmd [[silent! set nu]]

-- ====================
-- KeyMappings
-- ====================
vim.g.mapleader = ' '

-- vim.api.nvim_set_keymap('n', "<leader>e",      ":!pandoc -o ",  {noremap = true})
-- --------------------
-- Open Files (n)
-- --------------------
vim.api.nvim_set_keymap(
	'n',
	"<leader>nb",
	":Lexplore<cr>",
	{noremap = true}
)
vim.api.nvim_set_keymap(
	'n',
	"<leader>n<S-b>",
	":enew | edit ",
	{noremap = true}
)
vim.api.nvim_set_keymap(
	'n',
	"<leader>ns",
	":Sexplore<cr>",
	{noremap = true}
)
vim.api.nvim_set_keymap(
	'n',
	"<leader>n<S-s>",
	":split | edit",
	{noremap = true}
)
vim.api.nvim_set_keymap(
	'n',
	"<leader>nt",
	":Texplore<cr>",
	{noremap = true}
)
vim.api.nvim_set_keymap(
	'n',
	"<leader>n<S-t>",
	":tabnew | edit",
	{noremap = true}
)
vim.api.nvim_set_keymap(
	'n',
	"<leader>n<S-v>",
	":vsplit | edit",
	{noremap = true}
)
vim.api.nvim_set_keymap(
	'n',
	"<leader>nv",
	":Vexplore<cr>",
	{noremap = true}
)

-- --------------------
-- Terminal (t)
-- --------------------
vim.api.nvim_set_keymap(
	't',
	"<esc><esc>",
	"<C-\\><C-n>",
	{noremap = true}
)
vim.api.nvim_set_keymap(
	'n',
	"<leader>tf",
	":vsplit | term vifm<cr>i",
	{noremap = true}
)
vim.api.nvim_set_keymap(
	'n',
	"<leader>tv",
	":vsplit | term<cr>i",
	{noremap = true}
)
vim.api.nvim_set_keymap(
	'n',
	"<leader>ts",
	":split | term<cr><C-w><S-j>10<C-w>-i",
	{noremap = true}
)
vim.api.nvim_set_keymap(
	'n',
	"<leader>tt",
	":tabnew | term<cr>i",
	{noremap = true}
)

-- --------------------
-- Special Nav
-- --------------------
vim.api.nvim_set_keymap('n',
	"<leader>r",
	":set rnu!<cr>",
	{noremap = true}
)
vim.api.nvim_set_keymap('n',
	"<leader>cd",
	":cd %:p:h<cr>",
	{noremap = true}
)
vim.api.nvim_set_keymap('n',
	"<leader><enter>",
	":pwd<cr>",
	{noremap = true}
)
