--[[
-- Appearance
-- by: Zach Porter
--
-- This config file deals with anything related to 
-- the appearance of neovim.
--]]

require('lualine').setup({
    theme = "auto",
    tabline = {
        lualine_a = {},
        lualine_b = {'buffers'},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {'tabs'},
        lualine_z = {}
    }
})

vim.cmd [[silent! colorscheme default]]
vim.o.background = "light"

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
vim.o.wrap           = false
