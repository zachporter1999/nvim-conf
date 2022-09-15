--[[
-- File Explorer
-- by: Zach Porter
--
-- This config is related to navigating files, and buffers.
--]]


-- ========================================
-- Which Key Setup
-- ========================================

local wk = require("which-key")
wk.register({
	f = {
		-- File navigation
		name = "Open File",
		n = {"New Buffer (Nvim Tree)"},
		j = {"New Split Down (Nvim Tree)"},
		k = {"New Split Up (Nvim Tree)"},
		h = {"New Vsplit Left (Nvim Tree)"},
		l = {"New Vsplit Right (Nvim Tree)"},
		t = {"New Tab (Nvim Tree)"},

		N = {"New Buffer (Telescope)"},
		J = {"New Split Down (Telescope)"},
		K = {"New Split Up (Telescope)"},
		H = {"New Vsplit Left (Telescope)"},
		L = {"New Vsplit Right (Telescope)"},
		T = {"New Tab (Telescope)"},

		g = {"Lve Grep"},
	},
	b = {
		-- File navigation
		name = "Open Buffer",
		n = {"Switch to new buffer"},
		j = {"Split down and open existing buffer"},
		k = {"Split up and open existing buffer"},
		h = {"Split left and open existing buffer"},
		l = {"Split right and open existing buffer"},
		t = {"Open buffer in new tab"},
	},
}, { prefix = "<leader>"})

require('nvim-tree').setup()

-- ========================================
-- File Explorer
--
-- Open new files in new buffer, split, tab, or vsplit using explorer
-- ========================================

vim.api.nvim_set_keymap( 'n', "<leader>fn",     ":NvimTreeToggle<cr>",          {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>ft",     ":tabnew | NvimTreeToggle<cr>", {noremap = true} )

vim.api.nvim_set_keymap( 'n', "<leader>fK",     ":set nosplitbelow  | split  | NvimTreeToggle<cr>", {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>fJ",     ":set   splitbelow  | split  | NvimTreeToggle<cr>", {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>fH",     ":set nosplitright  | vsplit | NvimTreeToggle<cr>", {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>fL",     ":set   splitright  | vsplit | NvimTreeToggle<cr>", {noremap = true} )

-- ========================================
-- File Searcher
--
-- Open new files in new buffer, split, tab, or vsplit using Telescope
-- ========================================

vim.api.nvim_set_keymap( 'n', "<leader>fN",     ":Telescope find_files<cr>",                              {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>fT",     ":tabnew | Telescope find_files<cr> ",                    {noremap = true} )

vim.api.nvim_set_keymap( 'n', "<leader>fK",     ":set nosplitbelow  | split  | Telescope find_files<cr>", {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>fJ",     ":set   splitbelow  | split  | Telescope find_files<cr>", {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>fH",     ":set nosplitright  | vsplit | Telescope find_files<cr>", {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>fL",     ":set   splitright  | vsplit | Telescope find_files<cr>", {noremap = true} )

-- ========================================
-- Buffer Explorer
-- ========================================

vim.api.nvim_set_keymap( 'n', "<leader>bn", ":Telescope buffers<cr>",   {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>bj", ":set nosplitbelow  | split  | Telescope buffers<cr>",   {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>bj", ":set   splitbelow  | split  | Telescope buffers<cr>",   {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>bh", ":set nosplitright  | vsplit | Telescope buffers<cr>",   {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>bl", ":set   splitright  | vsplit | Telescope buffers<cr>",   {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>bt", ":tabnew | Telescope buffers<cr>",   {noremap = true} )

-- ========================================
-- Git tui tool
-- ========================================

vim.api.nvim_set_keymap( 'n', "<leader>fg", ":Telescope live_grep<cr>", {noremap = true} )
