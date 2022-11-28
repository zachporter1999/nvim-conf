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
		N = {"New Buffer (Nvim Tree)"},
		T = {"New Tab (Nvim Tree)"},

		n = {"New Buffer (Telescope)"},
		j = {"New Split Down (Telescope)"},
		k = {"New Split Up (Telescope)"},
		h = {"New Vsplit Left (Telescope)"},
		l = {"New Vsplit Right (Telescope)"},
		t = {"New Tab (Telescope)"},

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
    g = {"Lve Grep"},
}, { prefix = "<leader>"})

require('nvim-tree').setup()

-- ========================================
-- File Explorer
-- Open new files using nvim tree
-- ========================================

vim.api.nvim_set_keymap( 'n', "<leader>fN",     ":NvimTreeToggle<cr>",          {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>fT",     ":tabnew | NvimTreeToggle<cr>", {noremap = true} )

-- ========================================
-- File Searcher
--
-- Open new files in new buffer, split, tab, or vsplit using Telescope
-- ========================================

vim.api.nvim_set_keymap( 'n', "<leader>fn",     ":Telescope find_files<cr>",                              {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>ft",     ":tabnew | Telescope find_files<cr> ",                    {noremap = true} )

vim.api.nvim_set_keymap( 'n', "<leader>fk",     ":set nosplitbelow  | split  | Telescope find_files<cr>", {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>fj",     ":set   splitbelow  | split  | Telescope find_files<cr>", {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>fh",     ":set nosplitright  | vsplit | Telescope find_files<cr>", {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>fl",     ":set   splitright  | vsplit | Telescope find_files<cr>", {noremap = true} )

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

vim.api.nvim_set_keymap( 'n', "<leader>g", ":Telescope live_grep<cr>", {noremap = true} )
