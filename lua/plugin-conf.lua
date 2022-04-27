-- [[
--
-- ]]

-- When this list is updated restart nvim to install/clean plugins
-- TODO Make loading of plugins dynamic
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

	-- Plantuml
	-- TODO Remove plantuml in favour of emacs
	'weirongxu/plantuml-previewer.vim',
	'aklt/plantuml-syntax',
	'tyru/open-browser.vim',

	-- Theme
	'Mofiqul/vscode.nvim',
	-- 'vim-airline/vim-airline',
	-- 'vim-airline/vim-airline-themes',
}
