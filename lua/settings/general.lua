--[[
-- general.lua
-- by: Zach Porter
--]]

-- vim.g.mapleader = ' '
 vim.g.mapleader = ';'

WK.register({
	r = {"Toggle Relative Line Numbers"},
	e = {"Pandoc Compile"},

}, { prefix = "<leader>"})

vim.api.nvim_set_keymap('n', "<leader>e",       ":!pandoc -o ",  {noremap = true} )
vim.api.nvim_set_keymap('n', "<leader><space>", ":pwd<cr>",      {noremap = true} )

function my_md2pdf(filename)
	local pos = string.find(filename, ".md")
	local pdf_filename = string.sub(filename, 1, 5) .. "pdf"
	os.execute("pandoc -o " .. pdf_filename .. " " .. filename)
end
