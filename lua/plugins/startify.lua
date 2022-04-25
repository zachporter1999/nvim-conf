--[[
-- startify.lua
-- by: Zach Porter
--]]

vim.g.startify_lists = {
	{
		type = 'bookmarks',
		header = {'Bookmarks'},
	},
	{
		type = 'files',
		header = {'MRU'},
	},
	{
		type = 'dir',
		header = {vim.fn.getcwd()},
	},
}

vim.g.startify_bookmarks = {
	{
		c = vim.fn.stdpath('config')..'/init.lua'
	},
}

