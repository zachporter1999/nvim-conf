--[[
-- Appearance
-- by: Zach Porter
--
-- This config file deals with anything related to 
-- the appearance of neovim.
--]]

require('lualine').setup({
    theme = "auto",
})


require('material').setup({
    lualine_style = "stealth",
})


vim.cmd [[silent! colorscheme material]]
vim.g.material_style = "deap ocean"

-- ========================================
-- Formatting
-- ========================================
vim.o.tabstop        = 4
vim.o.shiftwidth     = 4
vim.o.autoindent     = true
vim.o.expandtab      = true
vim.o.number         = true
vim.o.relativenumber = true
vim.o.list           = true

