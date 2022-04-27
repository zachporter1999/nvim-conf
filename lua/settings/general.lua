--[[
-- general.lua
-- by: Zach Porter
--]]

-- vim.g.mapleader = ' '
 vim.g.mapleader = ';'

wk.register({
	r = {"Toggle Relative Line Numbers"},
	-- e = {"Pandoc Compile"}

}, { prefix = "<leader>"})

-- vim.api.nvim_set_keymap('n', "<leader>e",      ":!pandoc -o ",  {noremap = true})

vim.api.nvim_set_keymap('n', "<leader>r",       ":set rnu!<cr>", {noremap = true} )
vim.api.nvim_set_keymap('n', "<leader>cd",      ":cd %:p:h<cr>", {noremap = true} )
vim.api.nvim_set_keymap('n', "<leader><enter>", ":pwd<cr>",      {noremap = true} )
