--[[
-- mappings.lua
-- by: Zach Porter
--]]

-- Windows Specific
-- TODO fix this to work
if not vim.fn.has('unix') then
	vim.cmd 'set shell=powershell'
end

wk.register({
	t = {
		name = "Terminal",
		j = {"Open in spit"},
		h = {"Open in vertical split"},
		t = {"Open in new tab"},
	},
}, { prefix = "<leader>"})

vim.api.nvim_set_keymap( 't', "<esc><esc>", "<C-\\><C-n>",                             {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>tj", ":split  | term<cr><C-w><S-j>10<C-w>-i",   {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>th", ":vsplit | term<cr>i",                     {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>tt", ":tabnew | term<cr>i",                     {noremap = true} )

-- Git conf

vim.api.nvim_set_keymap( 'n', "<leader>gj", ":split  | term "..tool_conf.git.."<cr>i", {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>gh", ":vsplit | term "..tool_conf.git.."<cr>i", {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>gt", ":tabnew | term "..tool_conf.git.."<cr>i", {noremap = true} )
