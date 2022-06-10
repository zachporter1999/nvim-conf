--[[
-- packer.lua
-- by: Zach Porter
--
-- This file handles the managements of the required plugins.
--]]

local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
            vim.fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
	    vim.cmd 'packadd packer.nvim'
    end

packer = require 'packer'

packer.reset()

packer.startup(function()
	for idx = 1, #PLUGIN_LIST do
		use {PLUGIN_LIST[idx]}
	end
	-- use {
	-- 	'nvim-lualine/lualine.nvim',
	--	requires = {'kyazdani42/nvim-web-devicons', opt = true}
	--}

	-- TODO Update to allow these to be define in an array
	use {
		'nvim-telescope/telescope.nvim',
		requires = {{'nvim-lua/plenary.nvim'}}
	}

	use {
		'folke/which-key.nvim', 
		config = function() 
			require("which-key").setup {} 
		end 
	}

	use {
		'nvim-lualine/lualine.nvim',
  		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}
end)

