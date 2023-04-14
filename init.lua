--[[
	init.lua
	by: Zach Porter

	This is the main config file for my neovim config. A list of plugins, tools mappings, and loading of
	the required settings files can be found here
--]]

--[[
	Packer Bootstrap

	This is for installing packer when installing
	neovim for the first time.
--]]
local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
	vim.fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
	vim.cmd 'packadd packer.nvim'
end

--[[
	Packer Load Plugins

	Any plugins will be specified in this section.
--]]
local packer = require 'packer'

function packer_plugins()
	use 'wbthomason/packer.nvim'

	-- Appearance
	use 'ellisonleao/gruvbox.nvim'
	-- Bloat?? doesnt hurt... 
	use {
		'nvim-lualine/lualine.nvim',
		requires = {
			'kyazdani42/nvim-web-devicons',
			opt = true
		}
	}

	-- Note taking and ToDo
	use 'vimwiki/vimwiki'
	use 'dhruvasagar/vim-dotoo'

	-- Plantuml
	use 'weirongxu/plantuml-previewer.vim'
	use 'aklt/plantuml-syntax'
	use 'tyru/open-browser.vim'

	-- Fuzzy Find
	-- Leave for now... bloat??
	use {
		'nvim-telescope/telescope.nvim',
		requires = {{'nvim-lua/plenary.nvim'}}
	}

	-- Which Key
	-- Leave for now.. Telescope search for keys
	use {
	'folke/which-key.nvim',
		config = function()
			require("which-key").setup {}
		end
	}
end

packer.reset()
packer.startup(packer_plugins)

-- Set leader key
vim.g.mapleader = ';'

--[[
	Appearance
--]]
vim.cmd [[ silent! colorscheme gruvbox ]]
vim.o.background	= "light"
vim.o.termguicolors	= true

require('lualine').setup({
	options = {
		-- theme = "gruvbox",
		theme = "auto",
	},
	tabline = {
		lualine_a = {},
		lualine_b = {'buffers'},
		lualine_c = {},
		lualine_x = {},
		lualine_y = {'tabs'},
		lualine_z = {}
	}
})

--[[
	Formatting
--]]
vim.o.tabstop		= 8
vim.o.shiftwidth	= 8
vim.o.autoindent	= true
vim.o.expandtab	  	= false
vim.o.number		= true
vim.o.relativenumber 	= true
vim.o.list		= true
vim.o.wrap		= false

--[[
	DoToo
--]]
vim.g.dotoo_agenda_files = {
	"~/dotoo/*.dotoo",
}

vim.g.dotoo_begin_src_languages={
	"c",
	"rust",
	"vim",
	"bash",
}

-- map these files to the underlying vimscript list.
vim.cmd [[ let g:dotoo#agenda#files=g:dotoo_agenda_files ]]

--[[
	File Exploration
--]]
local wk = require("which-key")
wk.register({
	f = {
		-- File navigation
		name = "Open File",
		N = {"New Buffer (Netrw)"},
		T = {"New Tab (Netrw)"},

		n = {"New Buffer (Telescope)"},
		j = {"New Split Down (Telescope)"},
		k = {"New Split Up (Telescope)"},
		h = {"New Vsplit Left (Telescope)"},
		l = {"New Vsplit Right (Telescope)"},
		t = {"New Tab (Telescope)"},

		g = {"Lve Grep"},
	},
	b = {
		-- File navigation
		name = "Open Buffer",
		n = {"Switch to new buffer"},
		j = {"Split down and open existing buffer"},
		k = {"Split up and open existing buffer"},
		h = {"Split left and open existing buffer"},
		l = {"Split right and open existing buffer"},
		t = {"Open buffer in new tab"},
	},
	g = {"Lve Grep"},
}, { prefix = "<leader>"})

--[[
	File Explorer
	Open new files using nvim tree
--]]

keymap={
	-- Netrw based
	{
		mode='n',
		keymap='<leader>fN',
		command=':Lexplore<cr>',
	},
	{
		mode='n',
		keymap='<leader>fT',
		command=':Texplore<cr>',
	},
	-- Telescope based
	{
		mode='n',
		keymap='<leader>fn',
		command=':Telescope find_files<cr>',
	},
	{
		mode='n',
		keymap='<leader>ft',
		command=':tabnew | Telescope find_files<cr>',
	},
	-- Split Files
	{
		mode='n',
		keymap="<leader>fk",
		command=":set nosplitbelow  | split  | Telescope find_files<cr>",
	},
	{
		mode='n',
		keymap="<leader>fj",
		command=":set   splitbelow  | split  | Telescope find_files<cr>",
	},
	{
		mode='n',
		keymap="<leader>fh",
		command=":set nosplitright  | vsplit | Telescope find_files<cr>",
	},
	{
		mode='n',
		keymap="<leader>fl",
		command=":set   splitright  | vsplit | Telescope find_files<cr>",
	},
	-- Split Buffers
	{
		mode='n',
		keymap="<leader>bn",
		command=":Telescope buffers<cr>",
	},
	{
		mode='n',
		keymap="<leader>bj",
		command=":set nosplitbelow  | split  | Telescope buffers<cr>",
	},
	{
		mode='n',
		keymap="<leader>bj",
		command=":set   splitbelow  | split  | Telescope buffers<cr>",
	},
	{
		mode='n',
		keymap="<leader>bh",
		command=":set nosplitright  | vsplit | Telescope buffers<cr>",
	},
	{
		mode='n',
		keymap="<leader>bl",
		command=":set   splitright  | vsplit | Telescope buffers<cr>",
	},
	{
		mode='n',
		keymap="<leader>bt",
		command=":tabnew | Telescope buffers<cr>",
	},
	-- Searching
	{
		mode='n',
		keymap="<leader>g",
		command=":Telescope current_buffer_fuzzy_find<cr>",
	},
	{
		mode='n',
		keymap="<leader>G",
		command=":Telescope live_grep<cr>",
	},
	{
		mode='n',
		keymap="<leader>k",
		command=":Telescope keymaps<cr>",
	},
}

for ignore, keymapping in pairs(keymap) do
	vim.api.nvim_set_keymap( keymapping.mode, keymapping.keymap, keymapping.command, {noremap = true} )
end
