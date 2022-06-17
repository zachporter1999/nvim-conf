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

vim.api.nvim_set_keymap( 'n', '<leader>hn', ':Startify<cr>',                        {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>hr", ":luafile ~/.config/nvim/init.lua<cr>", {noremap = true} ) -- TODO revise reloading init

vim.api.nvim_set_keymap( 'n', "<leader>hk",     ":set nosplitbelow  | split  | Startify<cr>", {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>hj",     ":set   splitbelow  | split  | Startify<cr>", {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>hh",     ":set nosplitright  | vsplit | Startify<cr>", {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>hl",     ":set   splitright  | vsplit | Startify<cr>", {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>ht",     ":tabnew | Startify<cr>", {noremap = true} )
