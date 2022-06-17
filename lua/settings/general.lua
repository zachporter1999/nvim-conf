--[[
-- general.lua
-- by: Zach Porter
--]]

-- vim.g.mapleader = ' '
 vim.g.mapleader = ';'

local wk = require("which-key")
wk.register({
	r = {"Toggle Relative Line Numbers"},
	e = {"Pandoc Compile"},
    m =  {
        name = "make",
        a = { "make all" },
        c = { "make all" },
    },
}, { prefix = "<leader>"})

vim.api.nvim_set_keymap('n', "<leader>e",       ":!pandoc -o ",  {noremap = true} )
vim.api.nvim_set_keymap('n', "<leader><space>", ":pwd<cr>",      {noremap = true} )
vim.api.nvim_set_keymap('n', "<leader>ma", ":!make all<cr>",      {noremap = true} )
vim.api.nvim_set_keymap('n', "<leader>mc", ":!make clean<cr>",      {noremap = true} )
vim.api.nvim_set_keymap('n', "<leader>mm", ":!make ",      {noremap = true} )

function my_md2pdf(filename)
	local pos = string.find(filename, ".md")
	local pdf_filename = string.sub(filename, 1, 5) .. "pdf"
	os.execute("pandoc -o " .. pdf_filename .. " " .. filename)
end

