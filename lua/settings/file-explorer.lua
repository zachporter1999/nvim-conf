--[[
-- mappings.lua
-- by: Zach Porter
--]]

-- --------------------
-- Open Files (n)
-- --------------------

wk.register({
	n = {
		name = "Open File",
		b = {"New Buffer (explore)"},
		s = {"New Split (explore)"},
		t = {"New Tab (explore)"},
		v = {"New Vsplit (explore)"},

		B = {"New Buffer"},
		S = {"New Split"},
		T = {"New Tab"},
		V = {"New Vsplit"},
	},
}, { prefix = "<leader>"})

-- Open new files in new buffer, split, tab, or vsplit using explorer
vim.api.nvim_set_keymap( 'n', "<leader>nb",     ":Explore<cr>",   {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>ns",     ":Sexplore<cr>",   {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>nt",     ":Texplore<cr>",   {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>nv",     ":Vexplore<cr>",   {noremap = true} )

-- Open new files in new buffer, split, tab, or vsplit
vim.api.nvim_set_keymap( 'n', "<leader>nB",     ":enew   | edit ",   {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>nS",     ":split  | edit ",   {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>nT",     ":tabnew | edit ",   {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>nV",     ":vsplit | edit ",   {noremap = true} )
