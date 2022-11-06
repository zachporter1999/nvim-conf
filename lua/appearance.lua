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


require('material').setup({
    lualine_style = "stealth",
})


--vim.g.material_style = "palenight"
--vim.cmd [[silent! colorscheme material]]
vim.cmd [[silent! colorscheme default]]

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
