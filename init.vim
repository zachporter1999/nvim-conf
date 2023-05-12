""" Neovim Config

" ========================================
" Plugin Loading
" ========================================
call plug#begin()
        " --------------------------------
        "  Status Bar
        " --------------------------------
        Plug 'nvim-lualine/lualine.nvim'
        Plug 'kyazdani42/nvim-web-devicons'

        " --------------------------------
        "  Note Taking
        " --------------------------------
        Plug 'dhruvasagar/vim-dotoo'

        " --------------------------------
        "  Plantuml
        " --------------------------------
        Plug 'weirongxu/plantuml-previewer.vim'
        Plug 'aklt/plantuml-syntax'
        Plug 'tyru/open-browser.vim'

        " --------------------------------
        "  Which Key
        " --------------------------------
        Plug 'liuchengxu/vim-which-key'
call plug#end()

" ========================================
" Appearance
" ========================================
let g:mapleader=';'

set background=dark
set expandtab
set number
set relativenumber
set list
set nowrap

" ========================================
" Dotoo
" ========================================
let g:dotoo_begin_src_languages=[
                        \ "c",
                        \ "rust",
                        \ "vim",
                        \ "bash",
                        \ "python"
                        \]

let g:dotoo#agenda#files=[
                        \ "~/dotoo/*.dotoo"
                        \]


let g:dotoo_todo_keyword_faces = [
                        \ [ 'TODO', [ ':foreground black', ':background red', ':weight bold' ]]
                        \]

" ========================================
" Lua Line
" ========================================
lua << EOF
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
EOF
