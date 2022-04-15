--[[
-- Init.lua
-- by: Zach Porter
--]]

-- ====================
-- Required files
-- ====================

-- --------------------
-- Packer Plugin Manager
-- --------------------
require('plugins')

-- --------------------
-- General settings
-- --------------------
require('settings')

-- --------------------
-- Plugin settings
-- --------------------
require('plugins/startify')
require('plugins/telescope') 
require('plugins/floaterm') 
require('plugins/which-key')

vim.b.ale_linters = {'clangd', 'rust-analyzer'}
-- vim.cmd 'set shell=powershell'

require('orgmode').setup_ts_grammar(0)

require'nvim-treesitter.configs'.setup {

	highlight = {
		enable = true,
		deiable = {'org'},
		additional_vim_regex_highlighting = {'org'},
	},
	ensure_installed = {'org'}
}


require('orgmode').setup({
	org_agenda_files = {'~/org/*'},
	org_default_notes_file = '~/org/notes.org',
})
