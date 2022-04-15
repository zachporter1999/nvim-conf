--[[
-- Telescope.lua
-- by: Zach Porter
--]]

-- ====================
-- Settings
-- ====================

-- ====================
-- Keymappings
-- ====================
vim.api.nvim_set_keymap('n', "<leader>f", ":Telescope find_files<cr>", {noremap = true})
vim.api.nvim_set_keymap('n', "<leader>b", ":Telescope buffers<cr>", {noremap = true})
vim.api.nvim_set_keymap('n', "<leader>/", ":Telescope live_grep<cr>", {noremap = true})

