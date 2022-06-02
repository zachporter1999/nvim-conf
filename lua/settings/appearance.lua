--[[
-- appearance.lua
-- by: Zach Porter
--]]

-- TODO Switch to lualine
require'lualine'.setup({
	option = {
		theme = "vscode"
	}
})

vim.cmd [[ let tabspace = 4 ]]
vim.cmd [[ let shiftwidth = 4 ]]

vim.cmd [[silent! set rnu]]
vim.cmd [[silent! set nu]]

vim.o.termguicolors = true
-- Move to plugin file
vim.g.vscode_style = "dark"
vim.g.vscode_italic_comment = 1
-- vim.g.vscode_transparent = 1
vim.cmd [[silent! colorscheme default]]
-- vim.cmd [[silent! colorscheme torte]]
-- vim.cmd [[silent! colorscheme vscode]]
--vim.g.airline_theme='onedark'

