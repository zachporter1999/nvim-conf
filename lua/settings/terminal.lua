--[[
-- mappings.lua
-- by: Zach Porter
--]]

-- Windows Specific
if not vim.fn.has('unix') then
	vim.cmd 'set shell=powershell'
end

wk.register({
	t = {
		name = "Terminal",
		f = {"Open Vifm"},
		s = {"Open in spit"},
		t = {"Open in new tab"},
		v = {"Open in vertical split"},
	},
}, { prefix = "<leader>"})

vim.api.nvim_set_keymap( 't', "<esc><esc>", "<C-\\><C-n>",                           {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>tf", ":vsplit | term vifm<cr>i",              {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>tv", ":vsplit | term<cr>i",                   {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>ts", ":split  | term<cr><C-w><S-j>10<C-w>-i", {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>tt", ":tabnew | term<cr>i",                   {noremap = true} )
 
