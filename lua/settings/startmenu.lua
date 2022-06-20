--[[
-- Start Menu
-- by: Zach Porter
--
-- This config is primarly based around startify, and contains some 
-- key mappings to get to the startify page quickly, along with my 
-- default startify menu and bookmark config.
--]]

require("custom/custom")

-- ========================================
-- Which Key Setup
-- ========================================

local wk = require("which-key")
wk.register({
	h = {
 	name = "Nvim Config",
		h = {"Startify"},
		c = {"Open init.lua"},
		r = {"Reload init.lua"},
	},
}, { prefix = "<leader>"})

-- ========================================
-- Mappings
-- ========================================

vim.api.nvim_set_keymap( 'n', '<leader>hn', ':Startify<cr>',                        {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>hr", ":luafile ~/.config/nvim/init.lua<cr>", {noremap = true} ) -- TODO revise reloading init

vim.api.nvim_set_keymap( 'n', "<leader>hk",     ":set nosplitbelow  | split  | Startify<cr>", {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>hj",     ":set   splitbelow  | split  | Startify<cr>", {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>hh",     ":set nosplitright  | vsplit | Startify<cr>", {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>hl",     ":set   splitright  | vsplit | Startify<cr>", {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>ht",     ":tabnew | Startify<cr>", {noremap = true} )

-- ========================================
-- Start Menus Layout
-- ========================================

vim.g.startify_lists = {
	{
		type = 'files',
		header = {'MRU'},
	},
	{
		type = 'bookmarks',
		header = {'Bookmarks'},
	},
	{
		type = 'sessions',
		header = {"Sessions"},
	},
}

-- ========================================
-- Bookmark setup
-- ========================================

local bookmarks = {
	{
		h = "~",
	},
	{
		d = "~/Documents",
	},
    {
        c = vim.fn.stdpath('config')..'/init.lua',
    },
}

function bookmarks_load(bookmark_list)
    combine_lists(bookmarks, bookmark_list)
    vim.g.startify_bookmarks = bookmarks
end
