--[[
-- Telescope.lua
-- by: Zach Porter
--]]

-- ====================
-- Settings
-- ====================

-- ====================
-- Which Key
-- ====================
local wk = require("which-key")
wk.register({
	f = {"Find files"},
	b = {"Find buffers"},
--	= {"Open file in new buffer"},
}, { prefix = "<leader>"})
--
-- ====================
-- Keymappings
-- ====================
vim.api.nvim_set_keymap('n', "<leader>f", ":Telescope find_files<cr>", {noremap = true})
vim.api.nvim_set_keymap('n', "<leader>b", ":Telescope buffers<cr>", {noremap = true})
vim.api.nvim_set_keymap('n', "<leader>/", ":Telescope live_grep<cr>", {noremap = true})

