--[[
-- Init.lua
-- by: Zach Porter
--]]

-- ====================
-- Required files
-- ====================

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
require('conf/plugins/lsp')
require('conf/plugins/startify')
require('conf/plugins/telescope')
