--[[
-- appearance.lua
-- by: Zach Porter
--]]
local onedark = require('onedark')
local lualine = require('lualine')
        
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
      lualine_z = {}
    },
    extenstions = {},
})

-- colorscheme

onedark.setup {
    style = 'darker',
    transparent = false,
}
onedark.load()

-- TODO Move to plugin file
vim.g.vscode_style = "dark"
vim.g.vscode_transparent = true
vim.g.vscode_italic_comment = 1
-- vim.cmd [[silent! colorscheme vscode]]

vim.cmd [[silent! colorscheme onedark]]

-- formatting

vim.o.autochdir      = true
vim.o.autoindent     = true
vim.o.expandtab      = true
vim.o.tabstop        = 4
vim.o.shiftwidth     = 4
vim.o.number         = true
vim.o.relativenumber = true
vim.o.cursorline     = true
vim.o.cursorcolumn   = true

