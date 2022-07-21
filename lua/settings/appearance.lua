--[[
-- Appearance
-- by: Zach Porter
--
-- This config file deals with anything related to 
-- the appearance of neovim.
--]]

vim.cmd [[silent! colorscheme default]]

-- ========================================
-- Formatting
-- ========================================
vim.o.tabstop        = 4
vim.o.shiftwidth     = 4
vim.o.autochdir      = true
vim.o.autoindent     = true
vim.o.expandtab      = true
vim.o.number         = true
vim.o.relativenumber = true
vim.o.list           = true

-- ========================================
-- Custom Colorscheme
-- TODO move to colour scheme
-- ========================================
vim.cmd[[hi StatusLine   ctermfg=red  ctermbg=black]]
vim.cmd[[hi StatusLineNC ctermfg=black  ctermbg=8]]
vim.cmd[[hi WinSeparator ctermfg=red  ctermbg=black]]
vim.cmd[[hi TabLine      ctermfg=8 ctermbg=black]]
vim.cmd[[hi TabLineFill  ctermfg=black  ctermbg=white]]
vim.cmd[[hi TabLineSel   ctermfg=red  ctermbg=black]]
