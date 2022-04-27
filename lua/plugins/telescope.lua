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
	f = {
		name = "Find",
		f = {"Files"},
		b = {"Buffers"},
		g = {"Lve Grep"},
	},
}, { prefix = "<leader>"})
--
-- ====================
-- Keymappings
-- ====================
vim.api.nvim_set_keymap('n', "<leader>ff", ":Telescope find_files<cr>", {noremap = true})
vim.api.nvim_set_keymap('n', "<leader>fb", ":Telescope buffers<cr>", {noremap = true})
vim.api.nvim_set_keymap('n', "<leader>fg", ":Telescope live_grep<cr>", {noremap = true})

