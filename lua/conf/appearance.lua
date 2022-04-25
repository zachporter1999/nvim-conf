--[[
-- appearance.lua
-- by: Zach Porter
--]]

require('conf/helpers')

-- TODO Switch to lualine
-- require'lualine'.setup()

vim.cmd [[ let tabspace = 4 ]]
vim.cmd [[ let shiftwidth = 4 ]]

vim.cmd [[silent! set rnu]]
vim.cmd [[silent! set nu]]

vim.o.termguicolors = false
vim.cmd [[silent! colorscheme torte]]
vim.g.airline_theme='onedark'

-- ====================
-- Windows Specific
-- ====================
local osType = getOSType()
if (osType == 'win32') then
	vim.cmd 'set shell=powershell'
end
