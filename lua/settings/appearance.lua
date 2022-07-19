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

vim.cmd[[hi StatusLine   ctermfg=black  ctermbg=yellow]]
vim.cmd[[hi StatusLineNC ctermfg=black  ctermbg=grey]]
vim.cmd[[hi TabLine      ctermfg=yellow ctermbg=black]]
vim.cmd[[hi TabLineFill  ctermfg=grey  ctermbg=black]]
vim.cmd[[hi TabLineSel   ctermfg=yellow  ctermbg=black]]
