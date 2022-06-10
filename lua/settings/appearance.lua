--[[
-- appearance.lua
-- by: Zach Porter
--]]

require'lualine'.setup({
	option = {
		theme = "vscode"
	}
})

vim.cmd [[ let tabspace = 4 ]]
vim.cmd [[ let shiftwidth = 4 ]]

vim.cmd [[silent! set nu]]
vim.cmd [[silent! set rnu]]
vim.cmd [[silent! set cursorline]]
vim.cmd [[silent! set cursorcolumn]]

vim.o.termguicolors = true
-- TODO Move to plugin file
vim.g.vscode_style = "dark"
vim.g.vscode_italic_comment = 1
vim.cmd [[silent! colorscheme vscode]]

