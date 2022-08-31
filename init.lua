--[[
-- init.lua
-- by: Zach Porter
--
-- This is the main config file for my neovim config.
-- A list of plugins, tools mappings, and loading of
-- the required settings files can be found here
--
--]]

-- ========================================
-- Packer Bootstrap
--
-- This is for installing packer when installing
-- neovim for the first time.
-- ========================================
local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    vim.fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd 'packadd packer.nvim'
end

-- ========================================
-- Packer Load Plugins
--
-- Any plugins will be specified in this section.
-- ========================================
local packer = require 'packer'

function packer_plugins()
    use 'wbthomason/packer.nvim'

    use 'mhinz/vim-startify'
    use 'marko-cerovac/material.nvim'
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

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

    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/plenary.nvim'}}
    }

    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons', -- optional, for file icons
        },
        -- tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }

    use {
        'folke/which-key.nvim',
        config = function()
            require("which-key").setup {}
        end
    }
end

packer.reset()
packer.startup(packer_plugins)

-- ========================================
-- Load Settings
--
-- The configuration has been modularized and grouped
-- into easier to manager sections. Below are the settings
-- files that are being used.
--
-- Note: Any file in settings/ is a settings file and it 
--       tracked by git. 
-- Note: Any file in custom/ other than custom.lua will not 
--       be tracked by git and should be used to add Settings
--       unique to your system.
-- ========================================

require("general")
require("file-explorer")
require("appearance")
require("lsp")
require("startmenu")
require("custom")

-- ========================================
-- Combine custom lists
--
-- Any custom lists will need to be combined with the 
-- list that they extend.
-- ========================================
bookmarks_load(custom_bookmarks)
