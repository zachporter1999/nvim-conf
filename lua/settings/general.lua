--[[
-- General
-- by: Zach Porter
--
-- This config is for general, sometimes experimental
-- settings. Some basic make funcitonality is located
-- here, along with an experimental md to pdf funciton.
--]]

-- ========================================
-- Which Key Setup
-- ========================================

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

-- ========================================
-- Leader Key Mapping
-- ========================================

 vim.g.mapleader = ';'

-- ========================================
-- Make
-- ========================================
--
vim.api.nvim_set_keymap('n', "<leader>ma", ":!make all<cr>",      {noremap = true} )
vim.api.nvim_set_keymap('n', "<leader>mc", ":!make clean<cr>",      {noremap = true} )
vim.api.nvim_set_keymap('n', "<leader>mm", ":!make ",      {noremap = true} )

-- ========================================
-- [Experimental] MD to pdf 
-- ========================================

vim.api.nvim_set_keymap('n', "<leader>e",       ":!pandoc -o ",  {noremap = true} )

function my_md2pdf(filename)
	local pos = string.find(filename, ".md")
	local pdf_filename = string.sub(filename, 1, 5) .. "pdf"
	os.execute("pandoc -o " .. pdf_filename .. " " .. filename)
end

