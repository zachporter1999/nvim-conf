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
	for idx = 1, #plugin_list do
		use {plugin_list[idx]}
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
end)

