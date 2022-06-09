-- [[
-- Autocmd cfg
-- ]]

-- Autoset current directory
vim.cmd[[ autocmd BufEnter * :cd %:p:h ]]
