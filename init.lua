--[[
-- init.lua
-- by: Zach Porter
--]]

-- Start menu config
default_bookmarks = {
	{
		h = "~",
	},
	{
		d = "~/Documents",
	},
    { 
        c = vim.fn.stdpath('config')..'/init.lua' 
    },
}
non_default_bookmarks = {
	{
		dm = '$HOME/Documents/mainline-updates'
	},
	{
		d710 = '$HOME/Documents/zporter-710-test.git/branches/master'
	},
	{
		pm = '$HOME/qenv/repos/git/product/mainline'
	},
	{
		p71= '$HOME/qenv/repos/git/product/7_1'
	},
	{
		tm = '$HOME/qenv/repos/git/testware/mainline'
	},
	{
		t71= '$HOME/qenv/repos/git/testware/7_1'
	},
}

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


-- TODO have non default list that can be configured
-- for key, value in pairs(<custom list>) do
-- 	table.insert(vim.g.startify_bookmarks, value)
-- end

--[[
for k,v in pairs(non_default_book_marks) do
    table.insert(default_bookmarks, v)
end
--]]

bookmarks = {}

for k,v in pairs(default_bookmarks) do
    table.insert(bookmarks, v)
end
for k,v in pairs(non_default_bookmarks) do
    table.insert(bookmarks, v)
end

vim.g.startify_bookmarks = bookmarks
--vim.g.startify_bookmarks = default_bookmarks

--[[
vim.g.startify_bookmarks = {
	{
		h = "$HOME",
	},
	{
		d = "$HOME/Documents",
	},
	{
		c = vim.fn.stdpath('config')..'/init.lua'
	},
	{
		dm = '$HOME/Documents/mainline-updates'
	},
	{
		d710 = '$HOME/Documents/zporter-710-test.git/branches/master'
	},
	{
		pm = '$HOME/qenv/repos/git/product/mainline'
	},
	{
		p71= '$HOME/qenv/repos/git/product/7_1'
	},
	{
		tm = '$HOME/qenv/repos/git/testware/mainline'
	},
	{
		t71= '$HOME/qenv/repos/git/testware/7_1'
	},
}
--]]

TOOL_CONF = {

	git = 'tig',
    shell = '', -- default shell

}

-- When this list is updated restart nvim to install/clean plugins
-- TODO Make loading of plugins dynamic
PLUGIN_LIST =  {
	-- Packer
	'wbthomason/packer.nvim',

	-- Startify
	'mhinz/vim-startify',

	-- Note Taking
	-- TODO Remove in favour of emacs
	'vimwiki/vimwiki',

	-- lsp
	'neovim/nvim-lspconfig',
	'hrsh7th/cmp-nvim-lsp',
	'hrsh7th/cmp-buffer',
	'hrsh7th/cmp-path',
	'hrsh7th/cmp-cmdline',
	'hrsh7th/nvim-cmp',
	'hrsh7th/cmp-vsnip',
	'neovim/nvim-lspconfig',
	'williamboman/nvim-lsp-installer',

	-- Plantuml
	-- TODO Remove plantuml in favour of emacs
	'weirongxu/plantuml-previewer.vim',
	'aklt/plantuml-syntax',
	'tyru/open-browser.vim',

	-- Theme
	'Mofiqul/vscode.nvim',
    'navarasu/onedark.nvim',
}

local active_settings = {
	'plugin-install', -- required
	'settings/general',
	'settings/autocmd',
	'settings/file-explorer',
	'settings/terminal',
	'settings/config-manager',
	'settings/appearance',
	'settings/lsp',
}

for _, file in pairs(active_settings) do
	require(file)
end


