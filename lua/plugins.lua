--[[
-- packer.lua
-- by: Zach Porter
--
-- This file handles the managements of the required plugins.
--]]

local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
	  fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
	    vim.cmd 'packadd packer.nvim'
    end

packer = require 'packer'

packer.reset()

packer.startup(function()
	-- Packer
	use 'wbthomason/packer.nvim'

	-- Startify
	use 'mhinz/vim-startify'

	-- Note Taking
	-- TODO Remove in favour of emacs
	use 'vimwiki/vimwiki'

	-- lsp
	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'

	use 'neovim/nvim-lspconfig'
	use 'williamboman/nvim-lsp-installer'
	-- use {'neoclide/coc.nvim', branch = 'master', run = 'yarn install --frozen-lockfile'}
	-- TODO Remove plantuml in favour of emacs
	use 'weirongxu/plantuml-previewer.vim'
	use 'aklt/plantuml-syntax'
	use 'tyru/open-browser.vim'

	-- Theme
	use 'vim-airline/vim-airline'
	use 'vim-airline/vim-airline-themes'
	-- use {
	-- 	'nvim-lualine/lualine.nvim',
	--	requires = {'kyazdani42/nvim-web-devicons', opt = true}
	--}

	use {'nvim-telescope/telescope.nvim',requires = {{'nvim-lua/plenary.nvim'}}}

	use {
		'folke/which-key.nvim',
		config = function()
			require("which-key").setup {}
		end
	}
end)

