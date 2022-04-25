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
		c = '~/.config/nvim/init.lua'
	},
}

vim.api.nvim_set_keymap('n', '<leader>h', ':Startify<cr>', {noremap = true})
