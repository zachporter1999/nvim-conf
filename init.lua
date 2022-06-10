--[[
-- init.lua
-- by: Zach Porter
--]]

-- Start menu config
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

TOOL_CONF = {

	git = 'tig'

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
	--'hrsh7th/cmp-vsnip',
	'neovim/nvim-lspconfig',
	'williamboman/nvim-lsp-installer',

	-- Plantuml
	-- TODO Remove plantuml in favour of emacs
	'weirongxu/plantuml-previewer.vim',
	'aklt/plantuml-syntax',
	'tyru/open-browser.vim',

	-- Theme
	'Mofiqul/vscode.nvim',
}

local active_settings = {
	'plugin-install', -- Required
	'settings/general',
	'settings/autocmd',
	'settings/file-Explorer',
	'settings/terminal',
	'settings/config-manager',
	'settings/appearance',
	'settings/lsp',
}

for _, file in pairs(active_settings) do
	require(file)
end

-- global which key object
WK = require("which-key")

