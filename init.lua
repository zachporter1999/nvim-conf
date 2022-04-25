--[[
-- Init.lua
-- by: Zach Porter
--]]

-- TODO Update Doc
-- ====================
-- Required files
-- ====================

plugin_list =  {
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
	'neovim/nvim-lspconfig',
	'williamboman/nvim-lsp-installer',
	-- TODO Remove plantuml in favour of emacs
	'weirongxu/plantuml-previewer.vim',
	'aklt/plantuml-syntax',
	'tyru/open-browser.vim',

	-- Theme
	'vim-airline/vim-airline',
	'vim-airline/vim-airline-themes',
}
-- --------------------
-- Packer Plugin Manager
-- --------------------
require('plugins')

-- --------------------
-- General settings
-- --------------------
require('conf/init')

-- --------------------
-- Plugin settings
-- --------------------
require('conf/plugins/startify')
require('conf/plugins/telescope')
