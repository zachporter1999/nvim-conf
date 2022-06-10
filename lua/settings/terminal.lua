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
vim.api.nvim_set_keymap( 't', "<C-w>h",     "<esc><C-w>h",                             {noremap = true} )
vim.api.nvim_set_keymap( 't', "<C-w>j",     "<esc><C-w>j",                             {noremap = true} )
vim.api.nvim_set_keymap( 't', "<C-w>k",     "<esc><C-w>k",                             {noremap = true} )
vim.api.nvim_set_keymap( 't', "<C-w>l",     "<esc><C-w>l",                             {noremap = true} )

-- Terminal control

vim.api.nvim_set_keymap( 'n', "<leader>tj", ":split  | term<cr><C-w><S-j>10<C-w>-i",   {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>th", ":vsplit | term<cr>i",                     {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>tt", ":tabnew | term<cr>i",                     {noremap = true} )

-- Git conf

vim.api.nvim_set_keymap( 'n', "<leader>gj", ":split  | term "..TOOL_CONF.git.."<cr>i", {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>gh", ":vsplit | term "..TOOL_CONF.git.."<cr>i", {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>gt", ":tabnew | term "..TOOL_CONF.git.."<cr>i", {noremap = true} )
