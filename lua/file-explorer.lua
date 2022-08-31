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
		n = {"New Buffer (Explore)"},
		j = {"New Split Down (Explore)"},
		k = {"New Split Up (Explore)"},
		h = {"New Vsplit Left (Explore)"},
		l = {"New Vsplit Right (Explore)"},
		t = {"New Tab (Explore)"},

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

vim.api.nvim_set_keymap( 'n', "<leader>fn",     ":Explore<cr>",            {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>ft",     ":Texplore<cr>",           {noremap = true} )

vim.api.nvim_set_keymap( 'n', "<leader>fk",     ":Sexplore<cr>",           {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>fj",     ":Sexplore<cr><C-w><S-j>", {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>fh",     ":Vexplore<cr>",           {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>fl",     ":Vexplore<cr><C-w><S-l>", {noremap = true} )

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
