--[[
-- floaterm.lua
-- by: Zach Porter
--
-- This file handles the managements of the required plugins.
--]]

vim.g.floaterm_autoclose = 2

-- FLoaterm new
vim.api.nvim_set_keymap('n', "<leader>tv", ":FloatermNew vifm<cr>", {noremap = true})
vim.api.nvim_set_keymap('n', "<leader>tg", ":FloatermNew --wintype=vsplit --position=left --width=0.3 lazygit<cr>", {noremap = true})
vim.api.nvim_set_keymap('n', "<leader>td", ":FloatermNew --wintype=vsplit --position=left --width=0.3 lazydocker<cr>", {noremap = true})
vim.api.nvim_set_keymap('n', "<leader>tn", ":FloatermNew --wintype=split --position=bottom --height=0.3<cr>", {noremap = true})
vim.api.nvim_set_keymap('n', "<leader>tt", ":FloatermToggle<cr>", {noremap = true})

-- Floaterm cycle
vim.api.nvim_set_keymap('t', "<leader><tab>", "<c-\\><c-n>:FloatermNext<cr>", {noremap = true})

-- Floaterm kill
vim.api.nvim_set_keymap('t', "<leader>x", "<c-\\><c-n>:FloatermKill<cr>", {noremap = true})
