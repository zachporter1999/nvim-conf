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

wk.register({
	f = {"Find files"},
	b = {"Find buffers"},

	F = {"Lve Grep"}
}, { prefix = "<leader>"})
--
-- ====================
-- Keymappings
-- ====================
vim.api.nvim_set_keymap('n', "<leader>f", ":Telescope find_files<cr>", {noremap = true})
vim.api.nvim_set_keymap('n', "<leader>b", ":Telescope buffers<cr>", {noremap = true})
vim.api.nvim_set_keymap('n', "<leader>F", ":Telescope live_grep<cr>", {noremap = true})

