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
require('settings')

-- --------------------
-- Plugin settings
-- --------------------
require('plugins/startify')
require('plugins/telescope') 
require('plugins/floaterm') 
require('plugins/which-key')

vim.b.ale_linters = {'clangd', 'rust-analyzer'}
-- vim.cmd 'set shell=powershell'

