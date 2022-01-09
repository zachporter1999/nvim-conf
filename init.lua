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

vim.g.ale_completion_enabled = 1
vim.b.ale_linters = {'clangd'}
vim.cmd 'set shell=powershell'
