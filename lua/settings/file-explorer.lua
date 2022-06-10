--[[
-- mappings.lua
-- by: Zach Porter
--]]

-- --------------------
-- Open Files (n)
-- --------------------

WK.register({
	f = {
		-- File navigation
		name = "Open File",
		n = {"New Buffer (Explore)"},
		j = {"New Split Down (Explore)"},
		k = {"New Split Up (Explore)"},
		h = {"New Vsplit Left (Explore)"},
		l = {"New Vsplit Right (Explore)"},
		t = {"New Tab (Explore)"},

		N = {"New Buffer (Telescope)"},
		J = {"New Split Down (Telescope)"},
		K = {"New Split Up (Telescope)"},
		H = {"New Vsplit Left (Telescope)"},
		L = {"New Vsplit Right (Telescope)"},
		T = {"New Tab (Telescope)"},

		b = {"Buffers"},
		g = {"Lve Grep"},
	},
}, { prefix = "<leader>"})

-- Open new files in new buffer, split, tab, or vsplit using explorer
vim.api.nvim_set_keymap( 'n', "<leader>fn",     ":Explore<cr>",            {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>ft",     ":Texplore<cr>",           {noremap = true} )

vim.api.nvim_set_keymap( 'n', "<leader>fk",     ":Sexplore<cr>",           {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>fj",     ":Sexplore<cr><C-w><S-j>", {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>fh",     ":Vexplore<cr>",           {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>fl",     ":Vexplore<cr><C-w><S-l>", {noremap = true} )

-- Open new files in new buffer, split, tab, or vsplit using Telescope
-- TODO Move to telescope file?
vim.api.nvim_set_keymap( 'n', "<leader>fN",     ":Telescope find_files<cr>",                              {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>fT",     ":tabnew | Telescope find_files<cr> ",                    {noremap = true} )

vim.api.nvim_set_keymap( 'n', "<leader>fK",     ":set nosplitbelow  | split  | Telescope find_files<cr>", {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>fJ",     ":set   splitbelow  | split  | Telescope find_files<cr>", {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>fH",     ":set nosplitright  | vsplit | Telescope find_files<cr>", {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>fL",     ":set   splitright  | vsplit | Telescope find_files<cr>", {noremap = true} )

-- Buffers and Search

vim.api.nvim_set_keymap( 'n', "<leader>fb", ":Telescope buffers<cr>",   {noremap = true} )
vim.api.nvim_set_keymap( 'n', "<leader>fg", ":Telescope live_grep<cr>", {noremap = true} )
