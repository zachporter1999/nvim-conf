--[[
-- init.lua
-- by: Zach Porter
--]]

TOOL_CONF = {
	git = 'tig',
    shell = (vim.fn.has('windows') and 'powershell' or 'bash'), -- default shell
}

require("settings/general")
-- require("settings/autocmd")
require("settings/file-explorer")
require("settings/terminal")
require("settings/config-manager")
require("settings/appearance")
require("settings/lsp")
require("settings/startmenu")
require("custom/custom") -- Loads any custom files

-- Packer Bootstrap
local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    vim.fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd 'packadd packer.nvim'
end

-- Packer Load Plugins
local packer = require 'packer'

packer.reset()
packer.startup(function()
	use 'wbthomason/packer.nvim'

	use 'mhinz/vim-startify'

	use 'vimwiki/vimwiki'

	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-vsnip'
	use 'neovim/nvim-lspconfig'
	use 'williamboman/nvim-lsp-installer'

	use 'weirongxu/plantuml-previewer.vim'
	use 'aklt/plantuml-syntax'
	use 'tyru/open-browser.vim'

	use 'Mofiqul/vscode.nvim'
    use 'navarasu/onedark.nvim'

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

-- Add custom bookmarks
bookmarks_load(custom_bookmarks)
