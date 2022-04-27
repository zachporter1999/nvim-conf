--[[
-- mappings.lua
-- by: Zach Porter
--]]

-- --------------------
-- Open Files (n)
-- --------------------

wk.register({
	f = {
		name = "Open File",
		n = {"New Buffer (explore)"},
		j = {"New Split Down (explore)"},
		k = {"New Split Up (explore)"},
		h = {"New Vsplit Left (explore)"},
		l = {"New Vsplit Right (explore)"},
		t = {"New Tab (explore)"},

		N = {"New Buffer"},
		J = {"New Split Down"},
		K = {"New Split Up"},
		H = {"New Vsplit Left"},
		L = {"New Vsplit Right"},
		T = {"New Tab"},
	},
}, { prefix = "<leader>"})

-- Open new files in new buffer, split, tab, or vsplit using explorer
vim.api.nvim_set_keymap( 'n', "<leader>fn",     ":Explore<cr>",   {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>fk",     ":Sexplore<cr>",   {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>fj",     ":Sexplore<cr><C-w><S-j>",   {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>fh",     ":Vexplore<cr>",   {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>fl",     ":Vexplore<cr><C-w><S-l>",   {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>ft",     ":Texplore<cr>",   {noremap = true} )

-- Open new files in new buffer, split, tab, or vsplit
vim.api.nvim_set_keymap( 'n', "<leader>fN",     ":enew   | edit ",   {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>fK",     ":set nosplitbelow  | split  | edit ",   {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>fS",     ":set   splitbelow  | split  | edit ",   {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>fH",     ":set nosplitright  | vsplit | edit ",   {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>fL",     ":set   splitright  | vsplit | edit ",   {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>fT",     ":tabnew | edit ",   {noremap = true} )
