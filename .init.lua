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
        use {
                'nvim-lualine/lualine.nvim',
                requires = {
                        'kyazdani42/nvim-web-devicons',
                        opt = true
                }
        }

        -- Note taking and ToDo
        use 'dhruvasagar/vim-dotoo'

        -- Plantuml
        use 'weirongxu/plantuml-previewer.vim'
        use 'aklt/plantuml-syntax'
        use 'tyru/open-browser.vim'

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
theme = os.getenv("THEME")
if theme == nil then
        theme = "dark"
end

vim.cmd [[ silent! colorscheme default ]]
vim.o.background        = theme
vim.o.termguicolors     = false

require('lualine').setup({
        options = {
                component_separators = '',
                section_separators = '',
                theme = "16color",
        },
        tabline = {
                lualine_a = {'buffers'},
                lualine_b = {},
                lualine_c = {},
                lualine_x = {},
                lualine_y = {},
                lualine_z = {'tabs'}
        }
})

--[[
        Formatting
--]]
vim.o.expandtab         = true
vim.o.number            = true
vim.o.relativenumber    = true
vim.o.list              = true

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
        "python",
        "plantuml",
}

-- map these files to the underlying vimscript list.
vim.cmd [[ let g:dotoo#agenda#files=g:dotoo_agenda_files ]]

vim.g.dotoo_todo_keyword_faces = {
        { 'TODO', { ':foreground black', ':background red', ':weight bold' }},
}

--[[
        File Exploration
--]]
local wk = require("which-key")
wk.register({
        c = { "Open Config" }
}, { prefix = "<leader>"})

--vim.api.nvim_set_keymap( "n", "<leader>c", ":e "..vim.cmd[[ call stdpath("config") ]].."init.lua<cr>", { noremap = true } )
