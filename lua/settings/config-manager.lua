--[[
-- config-manager.lua
-- by: Zach Porter
--]]

local wk = require("which-key")
wk.register({
	h = {
 	name = "Nvim Config",
		h = {"Startify"},
		c = {"Open init.lua"},
		r = {"Reload init.lua"},
	},
}, { prefix = "<leader>"})

vim.api.nvim_set_keymap( 'n', '<leader>hh', ':Startify<cr>',                            {noremap = true})
vim.api.nvim_set_keymap( 'n', "<leader>hc", ":enew | edit "..vim.fn.stdpath('config').."/init.lua<cr>", {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>hr", ":luafile ~/.config/nvim/init.lua<cr>",     {noremap = true} )
