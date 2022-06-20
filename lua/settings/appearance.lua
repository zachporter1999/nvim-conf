--[[
-- Appearance
-- by: Zach Porter
--
-- This config file deals with anything related to 
-- the appearance of neovim.
--]]
local onedark = require('onedark')
local lualine = require('lualine')
        
-- ========================================
-- Lua Line
--
-- Setup up the tabline (top), and lualine (bottom).
-- ========================================
lualine.setup({
	option = {
        icons_enabled = true,
		theme         = "auto",
	},
    tabline = {
      lualine_a = {}, 
      lualine_b = {'windows'},
      lualine_c = {},
      lualine_x = {},
      lualine_y = {'tabs'},
      lualine_z = {},
    },
    extenstions = {},
})

-- ========================================
-- Color Scheme
-- ========================================
onedark.setup {
    style = 'darker',
    transparent = false,
}
onedark.load()

vim.cmd [[silent! colorscheme onedark]]

-- ========================================
-- Formatting
-- ========================================
vim.o.tabstop        = 4
vim.o.shiftwidth     = 4
vim.o.autochdir      = true
vim.o.autoindent     = true
vim.o.expandtab      = true
vim.o.number         = true
vim.o.relativenumber = true
vim.o.cursorline     = true
vim.o.cursorcolumn   = true

