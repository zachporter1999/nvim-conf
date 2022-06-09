--[[
-- init.lua
-- by: Zach Porter
--]]

-- global which key object
wk = require("which-key")

-- load plugin list
require('plugin-conf')
require('bookmark-conf')
require('tool-conf')

-- --------------------
-- Packer Plugin Manager
-- --------------------
require('plugin-install')

require('settings/general')
require('settings/autocmd')
require('settings/config-manager')
require('settings/file-explorer')
require('settings/terminal')
require('settings/appearance')

require('plugins/lsp')
require('plugins/startify')
require('plugins/telescope')
