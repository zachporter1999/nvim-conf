--[[
-- Terminal
-- by: Zach Porter
--
-- This config contains all configs related to 
-- launching a terminal or a terminal based app.
--]]

-- ========================================
-- Which Key Setup
-- ========================================

local wk = require("which-key")
wk.register({
	t = {
		name = "Terminal",
		j = {"Open in spit"},
		h = {"Open in vertical split"},
		t = {"Open in new tab"},
	},
}, { prefix = "<leader>"})

-- ========================================
-- Navication
--
-- Mappings to allow easy navigation when in terminal mode
-- ========================================

vim.api.nvim_set_keymap( 't', "<esc><esc>", "<C-\\><C-n>",                             {noremap = true} )
vim.api.nvim_set_keymap( 't', "<C-q>",      "<C-\\><C-n>",                             {noremap = true} )
vim.api.nvim_set_keymap( 't', "<C-w>h",     "<esc><C-w>h",                             {noremap = true} )
vim.api.nvim_set_keymap( 't', "<C-w>j",     "<esc><C-w>j",                             {noremap = true} )
vim.api.nvim_set_keymap( 't', "<C-w>k",     "<esc><C-w>k",                             {noremap = true} )
vim.api.nvim_set_keymap( 't', "<C-w>l",     "<esc><C-w>l",                             {noremap = true} )

vim.api.nvim_set_keymap('t', "<C-w>h", "<C-\\><C-N><C-w>h", {noremap = true} )
vim.api.nvim_set_keymap('t', "<C-w>j", "<C-\\><C-N><C-w>j", {noremap = true} )
vim.api.nvim_set_keymap('t', "<C-w>k", "<C-\\><C-N><C-w>k", {noremap = true} )
vim.api.nvim_set_keymap('t', "<C-w>l", "<C-\\><C-N><C-w>l", {noremap = true} )
vim.api.nvim_set_keymap('t', "<C-w>h", "<C-\\><C-N><C-w>h", {noremap = true} )

-- ========================================
-- Terminal Launching
-- ========================================

vim.api.nvim_set_keymap( 'n', "<leader>tj", ":split  | term "..TOOL_CONF.shell.."<cr><C-w><S-j>10<C-w>-i",   {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>th", ":vsplit | term "..TOOL_CONF.shell.."<cr>i",                     {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>tt", ":tabnew | term "..TOOL_CONF.shell.."<cr>i",                     {noremap = true} )

-- ========================================
-- Git Launching
-- ========================================

-- vim.api.nvim_set_keymap( 'n', "<leader>gj", ":split  | term "..TOOL_CONF.git.."<cr>i", {noremap = true} )
-- vim.api.nvim_set_keymap( 'n', "<leader>gh", ":vsplit | term "..TOOL_CONF.git.."<cr>i", {noremap = true} )
-- vim.api.nvim_set_keymap( 'n', "<leader>gt", ":tabnew | term "..TOOL_CONF.git.."<cr>i", {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>gt", ":lua require(\"tig\").open()<cr>", {noremap = true} )

vim.api.nvim_set_keymap( 'n', "<leader>gp", ":!git push<cr>",                                {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>gP", ":!git pull<cr>",                                {noremap = true} )
