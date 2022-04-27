--[[
-- startify.lua
-- by: Zach Porter
--]]

require("bookmark-conf")

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

for k, v in pairs(bookmark_list) do
	table.insert(vim.g.startify_bookmarks, v)
end
