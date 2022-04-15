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

	-- Org Mode
	use {'nvim-treesitter/nvim-treesitter'}
	use 'vimwiki/vimwiki'
  	use {'nvim-orgmode/orgmode', config = function()
 		        require('orgmode').setup{}
 		end
 	}

	-- Floaterm
	use 'voldikss/vim-floaterm'

	-- lsp
	-- use 'neovim/nvim-lspconfig'
	-- use {'neoclide/coc.nvim', branch = 'master', run = 'yarn install --frozen-lockfile'}
	use 'dense-analysis/ale'
	use 'weirongxu/plantuml-previewer.vim'
	use 'aklt/plantuml-syntax'
	use 'tyru/open-browser.vim'
	use {'sakhnik/nvim-gdb',  run = './install.sh' }


	-- Theme
	-- Using Packer
	use 'navarasu/onedark.nvim'

	use 'vim-airline/vim-airline'
	use 'vim-airline/vim-airline-themes'
	-- use {
	-- 	'nvim-lualine/lualine.nvim',
	--	requires = {'kyazdani42/nvim-web-devicons', opt = true}
	--}

	-- use {'junegunn/fzf'}
	use {'nvim-telescope/telescope.nvim',requires = {{'nvim-lua/plenary.nvim'}}}

	use {
		'folke/which-key.nvim',
		config = function()
			require("which-key").setup {
				-- Your config
				-- TODO add configs
			}
		end
	}
end)
