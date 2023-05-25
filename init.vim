""" Nvim Config

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
        Plug 'folke/which-key.nvim'


        " --------------------------------
        "  Neogit
        " --------------------------------
        Plug 'TimUntersberger/neogit'
call plug#end()

" ========================================
" Appearance
" ========================================
let g:mapleader=';'

let s:theme = getenv("THEME")

if s:theme == v:null
        let s:theme = 'dark'
endif

let &background = s:theme
set expandtab
set number
set relativenumber
set list
set nowrap
set laststatus=2
set showtabline=2
set mouse="" " default: nvi (normal, visual, insert)

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
" Neovim Sprecific
" ========================================
if has('nvim')
lua << EOF
        -- -------------------------------
        -- Lua Line
        -- -------------------------------
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

        -- -------------------------------
        -- Which Key
        -- -------------------------------
        vim.o.timeout = true
        vim.o.timeoutlen = 300
        require("which-key").setup({
        -- your configuration comes here
        })
EOF
endif

nnoremap <leader>c :e $HOME/.config/nvim/init.vim
