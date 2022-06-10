-- [[
-- Autocmd cfg
-- ]]

-- Autoset current directory
-- TODO Fix issue of error thrown on enter term
vim.cmd[[ autocmd TermEnter :echo null ]]
vim.cmd[[ autocmd BufEnter * :cd %:p:h ]]
