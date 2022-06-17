--[[
-- mappings.lua
-- by: Zach Porter
--]]

-- Windows Specific
-- TODO fix this to work
if not vim.fn.has('unix') then
	vim.cmd 'set shell=powershell'
end

local wk = require("which-key")
wk.register({
	t = {
		name = "Terminal",
		j = {"Open in spit"},
		h = {"Open in vertical split"},
		t = {"Open in new tab"},
	},
}, { prefix = "<leader>"})

-- Navigation 

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

--[[
vim.api.nvim_set_keymap('t', "<space>wj", "<C-\\><C-N><C-w>j", {noremap = true} )
vim.api.nvim_set_keymap('t', "<space>wk", "<C-\\><C-N><C-w>k", {noremap = true} )
vim.api.nvim_set_keymap('t', "<space>wl", "<C-\\><C-N><C-w>l", {noremap = true} )
vim.api.nvim_set_keymap('t', "<space>wh", "<C-\\><C-N><C-w>h", {noremap = true} )
vim.api.nvim_set_keymap('n', "<space>wj", "<C-w>j", {noremap = true} )
vim.api.nvim_set_keymap('n', "<space>wk", "<C-w>k", {noremap = true} )
vim.api.nvim_set_keymap('n', "<space>wl", "<C-w>l", {noremap = true} )
vim.api.nvim_set_keymap('n', "<space>wh", "<C-w>h", {noremap = true} )
--]]

-- Terminal control

vim.api.nvim_set_keymap( 'n', "<leader>tj", ":split  | term "..TOOL_CONF.shell.."<cr><C-w><S-j>10<C-w>-i",   {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>th", ":vsplit | term "..TOOL_CONF.shell.."<cr>i",                     {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>tt", ":tabnew | term "..TOOL_CONF.shell.."<cr>i",                     {noremap = true} )

-- Git conf

vim.api.nvim_set_keymap( 'n', "<leader>gj", ":split  | term "..TOOL_CONF.git.."<cr>i", {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>gh", ":vsplit | term "..TOOL_CONF.git.."<cr>i", {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>gt", ":tabnew | term "..TOOL_CONF.git.."<cr>i", {noremap = true} )
