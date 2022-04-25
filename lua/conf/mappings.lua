--[[
-- mappings.lua
-- by: Zach Porter
--]]

vim.g.mapleader = ' '

-- vim.api.nvim_set_keymap('n', "<leader>e",      ":!pandoc -o ",  {noremap = true})
-- --------------------
-- Open Files (n)
-- --------------------
vim.api.nvim_set_keymap(
	'n',
	"<leader>nb",
	":Lexplore<cr>",
	{noremap = true}
)
vim.api.nvim_set_keymap(
	'n',
	"<leader>n<S-b>",
	":enew | edit ",
	{noremap = true}
)
vim.api.nvim_set_keymap(
	'n',
	"<leader>ns",
	":Sexplore<cr>",
	{noremap = true}
)
vim.api.nvim_set_keymap(
	'n',
	"<leader>n<S-s>",
	":split | edit",
	{noremap = true}
)
vim.api.nvim_set_keymap(
	'n',
	"<leader>nt",
	":Texplore<cr>",
	{noremap = true}
)
vim.api.nvim_set_keymap(
	'n',
	"<leader>n<S-t>",
	":tabnew | edit",
	{noremap = true}
)
vim.api.nvim_set_keymap(
	'n',
	"<leader>n<S-v>",
	":vsplit | edit",
	{noremap = true}
)
vim.api.nvim_set_keymap(
	'n',
	"<leader>nv",
	":Vexplore<cr>",
	{noremap = true}
)

-- --------------------
-- Terminal (t)
-- --------------------
vim.api.nvim_set_keymap(
	't',
	"<esc><esc>",
	"<C-\\><C-n>",
	{noremap = true}
)
vim.api.nvim_set_keymap(
	'n',
	"<leader>tf",
	":vsplit | term vifm<cr>i",
	{noremap = true}
)
vim.api.nvim_set_keymap(
	'n',
	"<leader>tv",
	":vsplit | term<cr>i",
	{noremap = true}
)
vim.api.nvim_set_keymap(
	'n',
	"<leader>ts",
	":split | term<cr><C-w><S-j>10<C-w>-i",
	{noremap = true}
)
vim.api.nvim_set_keymap(
	'n',
	"<leader>tt",
	":tabnew | term<cr>i",
	{noremap = true}
)

-- --------------------
-- Special Nav
-- --------------------
vim.api.nvim_set_keymap('n',
	"<leader>r",
	":set rnu!<cr>",
	{noremap = true}
)
vim.api.nvim_set_keymap('n',
	"<leader>cd",
	":cd %:p:h<cr>",
	{noremap = true}
)
vim.api.nvim_set_keymap('n',
	"<leader><enter>",
	":pwd<cr>",
	{noremap = true}
)
